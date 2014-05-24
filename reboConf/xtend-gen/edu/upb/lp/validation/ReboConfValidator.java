/**
 * generated by Xtext
 */
package edu.upb.lp.validation;

import edu.upb.lp.reboConf.Element;
import edu.upb.lp.reboConf.Line;
import edu.upb.lp.reboConf.Matrix;
import edu.upb.lp.reboConf.ReboConfPackage.Literals;
import edu.upb.lp.validation.AbstractReboConfValidator;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.validation.Check;

/**
 * Custom validation rules.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 * 
 * @author Alexis Marechal
 */
@SuppressWarnings("all")
public class ReboConfValidator extends AbstractReboConfValidator {
  @Check
  public void checkMatrixSize(final Line line) {
    EList<Element> _els = line.getEls();
    final int lineSize = _els.size();
    final int firstSize = this.getMatrixLineSize(line);
    boolean _notEquals = (lineSize != firstSize);
    if (_notEquals) {
      EList<Element> _els_1 = line.getEls();
      int _size = _els_1.size();
      String _plus = ("Todas las filas de una matriz deben tener el mismo tamaño. Esta fila tiene " + Integer.valueOf(_size));
      String _plus_1 = (_plus + 
        " elementos, mientras que la primera linea tiene ");
      String _plus_2 = (_plus_1 + Integer.valueOf(firstSize));
      String _plus_3 = (_plus_2 + " elementos");
      this.error(_plus_3, 
        Literals.LINE__ELS);
    }
  }
  
  public int getMatrixLineSize(final Line line) {
    EObject container = ((EObject) line);
    boolean _not = (!(container instanceof Matrix));
    boolean _while = _not;
    while (_while) {
      EObject _eContainer = container.eContainer();
      container = _eContainer;
      boolean _not_1 = (!(container instanceof Matrix));
      _while = _not_1;
    }
    final Matrix mat = ((Matrix) container);
    EList<Line> _lines = mat.getLines();
    Line _get = _lines.get(0);
    EList<Element> _els = _get.getEls();
    return _els.size();
  }
}
