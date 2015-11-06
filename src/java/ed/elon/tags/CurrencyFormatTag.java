package ed.elon.tags;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import edu.elon.calculator.User;
import java.text.NumberFormat;


public class CurrencyFormatTag extends BodyTagSupport {

  private User user;
  private int count;

  @Override
  public int doStartTag() throws JspException {
    user = (User) pageContext.findAttribute("user");
    pageContext.setAttribute("investmentamount", this.converttoMoney(user.getAmount()));
    return EVAL_BODY_BUFFERED;
  }

  @Override
  public void doInitBody() {
    count = 1;
    this.converttoMoney(user.getCalculatefvalue(1));
    count++;
  }

  public String converttoMoney(double money) {
    NumberFormat currency = NumberFormat.getCurrencyInstance();
    pageContext.setAttribute(
            "moneycurrency", currency.format(money));
    return currency.format(money);
  }

  @Override
  public int doAfterBody() throws JspException {
    try{
      if (count <= user.getYears()) {
        this.converttoMoney(user.getCalculatefvalue(count));
        count++;
        return EVAL_BODY_AGAIN;
      } else{
        JspWriter out= bodyContent.getEnclosingWriter();
        bodyContent.writeOut(out);
        return SKIP_BODY;
    }
  } catch (IOException ioe){
    System.err.println("IOException doAfterBody: " + ioe);
    return SKIP_BODY;
  }
}
}
