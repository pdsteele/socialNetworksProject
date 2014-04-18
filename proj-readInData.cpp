//Loads an edgelist and turns it into a binary graph file 
//  First argument is the name of the input data 
//  Second argument is the name of the desired output
//  e.g., "proj-readInData.exe test.txt outputGraph.graph"

#include "Snap.h"
#include <time.h>

int main(int argc, char* argv[]) {
  
  time_t beginTime = time(NULL); //for timing reads 

  //Load data from edge list
  printf("Loading data from: %s \n", argv[1]);
  PNGraph G = TSnap::LoadEdgeList<PNGraph>(argv[1],0,1);

  //print time it took to read the file
  time_t endTime = time(NULL);
  double seconds = difftime(endTime,beginTime);
  printf("Read file in %.f seconds \n", seconds);

  //print basic diagnostics
  printf("G->GetNodes() = %d, G->GetEdges() = %d\n", G->GetNodes(), G->GetEdges());

  //determine correct name to output file to
  char *FName;

  if(argc < 3)
  {
    FName = "output.graph";
  }
  else
  {
    FName = argv[2];
  }

  //reset timer
  beginTime = time(NULL);

  //output file
  { TFOut FOut(FName); G->Save(FOut); }

  endTime = time(NULL);
  seconds = difftime(endTime,beginTime);
  printf("Wrote file in %.f seconds \n", seconds);

  // //load binary and test
  // TFIn FIn("test.graph"); 
  // PNGraph G2 = TNGraph::Load(FIn);
  //printf("G->GetNodes() = %d, G->GetEdges() = %d\n", G->GetNodes(), G->GetEdges());
  
  // save and load from a text file
  //TSnap::SaveEdgeList(G2, "test.txt", "Save as tab-separated list of edges");
   
  return (0);
}
