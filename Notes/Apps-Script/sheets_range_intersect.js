function rangeIntersect (rng1, rng2) 
{
  /*
  ------------------------------------------
  Returns true if the two ranges intersect.
   https://myengineeringworld.net/2018/09/gas-triggers-events.html
  ------------------------------------------
  */
  
  // Check for empty objects.
  if(rng1 == null || rng2 == null)
    return false;
  
  // Compare the rows and columns of the two ranges.
  return (rng1.getLastRow() >= rng2.getRow()) && (rng2.getLastRow() >= rng1.getRow()) 
          && (rng1.getLastColumn() >= rng2.getColumn()) && (rng2.getLastColumn() >= rng1.getColumn());
}