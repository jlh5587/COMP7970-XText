package org.xtext.example.mydsl.generator

interface ICapability {
	def void setName(String name);
	def String getName();
	def void setProficiency(double proficiency);
	def double getProficiency();
	def Object[] taskAlgorithm(Object...objects);
}