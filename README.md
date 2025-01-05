# etherscan

const { ReadableStream } = require('node:stream/web');


<datatype>  <storagetype> varName = <defaultvalue>


variable based on storage:

==): State Variables
Stored on the blockchain (persistent storage).
Declared outside functions, inside the contract.
Example: uint256 public stateVar;

==): Memory Variables
Temporary, exist only during function execution.
Used for function arguments and local variables (e.g., strings, structs, arrays).
Example: string memory tempStr = "Hello";

==): Storage Variables
Refers to state variables or explicitly declared storage references.
Persist on the blockchain.
Example: string storage existingStr = stateVar;

==): Calldata Variables
Non-modifiable (immutable) arguments passed to external functions.
Example: function setName(string calldata name) external { ... }

==): Stack Variables
Primitive types (like uint, bool) stored in the EVM stack during execution.
Limited size (1024 slots). Used implicitly for most local variables.



--


function getFirstName() external view returns (string<datatype> memory<storageType>) {
[external/internal/public/private]
enternal: only from outside the contract/class.
internal: only from inside the contract/class.
public: from anywhere.[not gad optimized/default]
private: within the same contrac/class


[view/non-view/pure]
view: readblockchain state.
non-view: writing bloackchain state.
pure: just a utils funciton no read/write to state. 
default is write:

storageType:[storage/memory/calldata]
calldata: const/read-only
memory: temporary storage.
storage: solidity does not allow/ use memory for that.
