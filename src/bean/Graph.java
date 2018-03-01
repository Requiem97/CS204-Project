package bean;

import java.util.*;

public class Graph {
	private final Map<String, Vertex> graph;
	private static String path = "s";
	public static void resetPath () {
		path = "s";
	}

	public static class Edge {
		public final String v1, v2;
		public final int dist;

		public Edge(String v1, String v2, int dist) {
			this.v1 = v1;
			this.v2 = v2;
			this.dist = dist;
		}
	}

	public static class Vertex implements Comparable<Vertex> {
		public final String name;
		public int dist = Integer.MAX_VALUE; // assume infinity
		public Vertex previous = null;
		public final Map<Vertex, Integer> neighbours = new HashMap<>();

		public Vertex(String name) {
			this.name = name;
		}

		private void printPath() {
			if (this == this.previous) {
			} else if (this.previous == null) {
				path += this.name + "(not reached)";

			} else {
				this.previous.printPath();
				path += " -> " + this.name + " (" + this.dist + ")";
			}
		}

		public int compareTo(Vertex other) {
			if (dist == other.dist)
				return name.compareTo(other.name);

			return Integer.compare(dist, other.dist);
		}

	}

	public Graph(Edge[] edges) {
		graph = new HashMap<>(edges.length);

		for (Edge e : edges) {
			if (!graph.containsKey(e.v1))
				graph.put(e.v1, new Vertex(e.v1));
			if (!graph.containsKey(e.v2))
				graph.put(e.v2, new Vertex(e.v2));
		}

		for (Edge e : edges) {
			graph.get(e.v1).neighbours.put(graph.get(e.v2), e.dist);
		}
	}

	public void dijkstra(String startName) {
		final Vertex source = graph.get(startName);
		NavigableSet<Vertex> q = new TreeSet<>();

		for (Vertex v : graph.values()) {
			v.previous = v == source ? source : null;
			v.dist = v == source ? 0 : Integer.MAX_VALUE;
			q.add(v);
		}

		dijkstra(q);
	}

	private void dijkstra(final NavigableSet<Vertex> q) {
		Vertex u, v;
		while (!q.isEmpty()) {

			u = q.pollFirst();
			if (u.dist == Integer.MAX_VALUE)
				break;
			for (Map.Entry<Vertex, Integer> a : u.neighbours.entrySet()) {
				v = a.getKey();

				final int alternateDist = u.dist + a.getValue();
				if (alternateDist < v.dist) {
					q.remove(v);
					v.dist = alternateDist;
					v.previous = u;
					q.add(v);
				}
			}
		}
	}

	public String printPath(String endName) {
		resetPath();
		graph.get(endName).printPath();
		return path;
	}
}
