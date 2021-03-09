#include <bits/stdc++.h>
using namespace std;
vector<long long int> adj[100005];
long long int height_of_node[100005];

void calculate_height_node(long long int node, long long int first_parent, long long int current_height = 1)
{
    height_of_node[node] = current_height;
    // we are travesing every node that is adjacent to the current node except its parent node.
    for (auto adjacent_node : adj[node])
    {
        if (adjacent_node != first_parent)
            calculate_height_node(adjacent_node, node, current_height + 1);
    }
}
int main()
{
    /*
   Assuming that first line of our input contains N i.e. total no of nodes in a tree.
   next N-1 line contains the parent of each node.
   */
    int total_no_node;
    cin >> total_no_node;
    int node[total_no_node];
    for (int i = 2; i <= total_no_node; i++)
    {
        cin >> node[i];
        // creating a bi- directional tree
        adj[node[i]].push_back(i);
        adj[i].push_back(node[i]);
    }
    // we are calculating the height of all nodes.
    // Assuming 1 to the root node , as root node has no parent so we
    // consider it as 0.
    calculate_height_node(1, 0);
    //After this function height_of_node[] array contains height of all nodes.

    for (int iterator = 0; iterator < total_no_node; iterator++)
    {
        // printing height of all the nodes
        cout << height_of_node[node[iterator]] << endl;
    }
    return 0;
}
