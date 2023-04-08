# Manage Structured Data in Documents

## Purpose:
Track the completion of a set of structured documents for a context, usually a project.

A number of JSON Documents, defined by a set of schemas need to be completed with data elements.

A set of requirements needs to be fulfilled for a context to be completed and the progress towards that goal is tracked.

Data may either be entered setting fragments of the documents, usually with information that is manually entered into some front-end (which is beyond the scope of this framework) or be transmitted from external systems.

Alternatively the data may be set from one or more of predefined data sets, which can be selected by the context metadata. A common example is the use of platform, provider or use case, which will set some or most of the documents, and only context instance specific data needs to be added.

If the data of the predefined data set changes, the resultant documents are updated automatically, unless this is specifically blocked.

### Example Use Case:
In order to comply with regulatory requirements a software development project needs to provide a set of formalized documentation. This documentation needs to be generated in full for each new release of the software, even if only small, incremental changes have been made.

# Primitives


| Type | Description |
| ---  | --- |
| Document | Instance of *Document Type*, a single document that is part of a *Context*.  Each Document consists of five Major Parts: <ul><li>the API version <li>The kind of Document (defined by the Document Type) within that API <li>The `metadata` section <li> the `spec` section, containing the actual data <li>the `state` section, the contents of which are maintained by the software and can not be directly changed through the service api.|
| Document Type | A namespaced definition of the structure of a document. *Documents* are instances of *Document Types*. A Document Type definition describes the structure of the `spec` section of the document through a OpenAPI 3.0 definition. |
| Context | a set of related Documents. Tracks the  |
| Scope | a set of Document Types as well as a list of required or optional documents.

The Document Types and Scopes are defined as Kubernetes Custom Resources, Documents and Contexts are Kubernetes Resources.

There needs to be a controller to track completion for the Contexts. The use-case specific logic for handling content of the documents is handled by a further micro-services. An API Gateway allows more finely grained permission controls.
