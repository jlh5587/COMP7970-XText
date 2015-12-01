/**
 */
package org.xtext.example.mydsl.myDsl;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Interface</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.xtext.example.mydsl.myDsl.Interface#getSuperInterface <em>Super Interface</em>}</li>
 *   <li>{@link org.xtext.example.mydsl.myDsl.Interface#getAttributes <em>Attributes</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.xtext.example.mydsl.myDsl.MyDslPackage#getInterface()
 * @model
 * @generated
 */
public interface Interface extends Type
{
  /**
   * Returns the value of the '<em><b>Super Interface</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Super Interface</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Super Interface</em>' reference.
   * @see #setSuperInterface(Interface)
   * @see org.xtext.example.mydsl.myDsl.MyDslPackage#getInterface_SuperInterface()
   * @model
   * @generated
   */
  Interface getSuperInterface();

  /**
   * Sets the value of the '{@link org.xtext.example.mydsl.myDsl.Interface#getSuperInterface <em>Super Interface</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Super Interface</em>' reference.
   * @see #getSuperInterface()
   * @generated
   */
  void setSuperInterface(Interface value);

  /**
   * Returns the value of the '<em><b>Attributes</b></em>' containment reference list.
   * The list contents are of type {@link org.xtext.example.mydsl.myDsl.Attribute}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Attributes</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Attributes</em>' containment reference list.
   * @see org.xtext.example.mydsl.myDsl.MyDslPackage#getInterface_Attributes()
   * @model containment="true"
   * @generated
   */
  EList<Attribute> getAttributes();

} // Interface
