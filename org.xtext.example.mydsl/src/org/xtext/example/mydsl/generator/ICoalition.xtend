package org.xtext.example.mydsl.generator
import java.util.ArrayList;

interface ICoalition {
	def void setLeader(IAgent leader);
	def IAgent getLeader();
	def IAgent electLeader(Object...objects);
	def void setAgents(ArrayList<IAgent>members);
	def ArrayList<IAgent> getAgents();
	def boolean addSingleAgent(IAgent agent);
	def ArrayList<IAgent> formCoalition(Object...objects);
	def void setTasks(ArrayList<ITask>tasks);
	def ArrayList<ITask> getTasks();
	def boolean addSingleTask(ITask task);
	def Object performTasks(Object...objects);
}