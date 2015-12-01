package org.xtext.example.mydsl.generator;

@SuppressWarnings("all")
public interface ICapability {
  public abstract void setName(final String name);
  
  public abstract String getName();
  
  public abstract void setProficiency(final double proficiency);
  
  public abstract double getProficiency();
  
  public abstract Object[] taskAlgorithm(final Object... objects);
}
