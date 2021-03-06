//Loads an graph binary file (generated by readInData)
// and calculates:
//  - diameter & 90th percentile effective diameter
//  - finds SCC, #nodes/edges, and its diameter
//  - avg. clustering coeff
//  - clustering distribution plot
//  - degree distribution plot
//  - hop plot
// First argument passed to program is graph file name (e.g. test.graph)
// Second argument passed is output file base name 
//    (i.e., all output files will be prefixed with this name)
// e.g., "proj-calcStats.exe inputGraph.graph twit_subsmpl_3"

// Thanks goes to SNAP team.

#include "Snap.h"
#include <time.h>

using namespace TSnap;

int main(int argc, char* argv[]) {

  //determine correct name to output file to
  char *fileName;

  if(argc < 3)
  {
    fileName = "output";
  }
  else
  {
    fileName = argv[2];
  }
  
  time_t beginTime = time(NULL); //for timing reads 

  //Load data from graph file
  printf("Loading data from: %s \n", argv[1]);
  TFIn FIn(argv[1]); 
  PNGraph G = TNGraph::Load(FIn);

  //print time it took to read the file
  time_t endTime = time(NULL);
  double seconds = difftime(endTime,beginTime);
  printf("Read file in %.f seconds \n\n", seconds);

  //print basic diagnostics
  printf("Total number of nodes = %d \nTotal number of edges = %d\n\n", G->GetNodes(), G->GetEdges());

  //find SCC
  PNGraph SCC = GetMxScc(G); //returns the largest SCC as a graph object
  //print basic diagnostics
  printf("Largest SCC number of nodes = %d \nLargest SCC number of edges = %d\n", SCC->GetNodes(), SCC->GetEdges());

  //get average clustering coefficient
  double avgClustCoeff;
  TFltPrV degreeCCpairs;
  avgClustCoeff = GetClustCf(G,degreeCCpairs,-1); //-1 is flag to find avg cf over all nodes
  printf("Full graph has average clustering coefficient = %f \n", avgClustCoeff);

  printf("Full graph has the following clustering coefficient distribution:\n");
  for (TFltPr *Pair = degreeCCpairs.BegI(); Pair < degreeCCpairs.EndI(); Pair++) {
    printf("\tDegree: %f | Clustering Coefficient: %f\n", Pair->Val1.Val, 
           Pair->Val2.Val);
  }

  //generate plot titles
  char *clstCfTitle = "Clustering Coefficient Distribution";
  char *inDegTitle = "In-degree Distribution";
  char *outDegTitle = "Out-degree Distribution";
  char *hopTitle = "Hop Plot";

  //plot clustering coeff distribution
  beginTime = time(NULL); //reset timer
  PlotClustCf(G, fileName, clstCfTitle);
  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("Clustering Coefficient Distribution plotted in %.f seconds \n\n", seconds);

  //plot in degree distro
  beginTime = time(NULL); //reset timer
  PlotInDegDistr(G, fileName, inDegTitle, false, true); //false for !CCdf and true for power-law fit
  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("In-degree distribution plotted in %.f seconds \n\n", seconds);

  //plot out degree distro
  beginTime = time(NULL); //reset timer
  PlotOutDegDistr(G, fileName, outDegTitle, false, true); //false for !CCdf and true for power-law fit
  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("Out-degree distribution plotted in %.f seconds \n\n", seconds);

  //plot hop plot
  beginTime = time(NULL); //reset timer
  PlotHops(G, fileName, hopTitle, true, 32); //true for directed, 32 for # of ANF approximations
                                             //ANF approximations MUST be a multiple of eight
  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("Hop plot generated in %.f seconds \n\n", seconds);


  //reset timer
  beginTime = time(NULL);
  //get diameter of full graph
  int FullDiam;
  int NTestNodes = G->GetNodes() / 2; //number of random starting nodes for BFS search
  FullDiam = GetBfsFullDiam(G, NTestNodes, true); //use BFS search to get diameter
  printf("Full graph diameter = %d\n", FullDiam);
  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("Full Diameter found in %.f seconds \n\n", seconds);

  //reset timer
  beginTime = time(NULL);
  //get 90th percentile diameter of full graph
  int EffDiam;
  EffDiam = GetBfsFullDiam(G, NTestNodes, true); //use BFS search to get diameter
  printf("90th percentile effective diameter = %d - ", EffDiam);

  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("90th percentile diameter found in %.f seconds \n\n", seconds);

  
  //get diameter of SCC
  beginTime = time(NULL); //reset timer
  NTestNodes = SCC->GetNodes() / 2;
  FullDiam = GetBfsFullDiam(SCC, NTestNodes, true); 
  printf("SCC Diameter = %d\n", FullDiam);

  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("SCC Diameter found in %.f seconds \n\n", seconds);


  return (0);
}
