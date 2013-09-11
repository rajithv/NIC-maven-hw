package sample;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rajith
 */
public class NICThing {
    public String generate(NICProp nicprop){
        String ans = "";
        ans += "Year";
        ans += nicprop.getNo().substring(0,2);
        
        
        return ans;
    }
}
