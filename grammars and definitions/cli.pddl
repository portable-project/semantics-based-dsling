
cli {

	/*

		TODO: generics, method body (for methods, props and events)

	*/
	
	assembly: {
		name: string;
		types: type[];
	};
	
	member: {
		name: string;
		visibility: {
			|private
			|public
			|protected
		};
	};

	type: member {
		kind: {
			|class
			|delegate
			|struct
			|enum
			|interface
		};
		members: member[];
		parent: type;
	};

	field: member {
		type;
	};
	method: member {
		signature: {
			returns: type;
			args: type[];
		}; 
	};
	property: member {
		type;
	};
	event: member {
		type;
	};
}
