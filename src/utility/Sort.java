package utility;

import bean.Items;

public class Sort {
	public void QuickSort(double a[], int start, int end) {
		if (start < end) {
			int x = HoarePartition(a, start, end);
			QuickSort(a, start, x);
			QuickSort(a, x + 1, end);

		}
	}

	private int HoarePartition(double a[], int b, int c) {
		double x = a[b];
		int y = b - 1;
		int z = c + 1;

		while (true) {
			do {
				z--;
			} while (a[z] < x);
			do {
				y++;
			} while (a[y] > x);

			if (y < z) {
				double temp;
				temp = a[y];
				a[y] = a[z];
				a[z] = temp;
			} else {
				return z;
			}
		}
	}
}
