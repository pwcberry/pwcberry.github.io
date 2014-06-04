---
layout: book
title: Software Architecture in Practice | Chapter 13
permalink: /rmit/books/software-architecture-in-practice/chapter-13/
book_title: Software Architecture in Practice, 2nd Edition
book_authors: Len Bass, Paul Clements, Rick Kazman
book_publisher: Pearson Education, an imprint of Addison-Wesley, Boston MA, 2003
---

# Chapter 13: Architectural Patterns

An architectural pattern establishes a relationship between:

* _A context_: a recurring situation that produces a problem
* _A problem_: within its context, what qualities that must be met
* _A solution_: a properly abstracted resolution. Includes architectural structures that balance opposing forces. Describes static relationships between elemenst or runtime behaviour and interaction between elements.

## Layered Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Module</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>Software needs to be segmented so modules can evolve independently.</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Defines layers and unidirectional <em>allowed-to-use</em> relationships between layers.</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td><em>Layer</em>: itself is a component comprised of software modules that offer a cohesive set of services. These services are accessbile through a public interface.</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Allowed-to-use</em>: A specialization of the generic <em>depends-on</em> relation. The model should describe the relation rules as "allowed to use only the layer immediately below it" or similar.</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>Every piece of software is allocated to exactly one layer</li>
				<li>There are at least two layers (but usually there are three or more)</li>
				<li>The <em>allowed-to-use</em> relations should not be circular</li>
				<li>The <em>allowed-to-use</em> relation has the default rule: a layer may only access the services of the layer directly beneath it</li>
				<li>A layer may not access the services of a layer above it</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>Addition of layers ads up-front cost and complexity</li>
				<li>Layers contribute a performance penality (latency).</li>
				<li>Many instances of <em>layer bridging</em> &mdash; where an upper layer accesses the services of a layer deeper than its adjacent layer &mdash; may hinder the portability and maintainability goals of the system</li>
			</ul>
		</td>
	</tr>
</table>

## Broker Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Component-and-Connector</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>How can distributed software be organized so that clients do not need to know the locations of service providers, that allows dynamic bindings between clients and services to be easily changed?</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Defines a runtime component that mediates communication between a number of clients and servers</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td>
			<em>Client</em>: a requester of services<br>
			<em>Server</em>: a provider of services<br>
			<em>Broker</em>: intermediary that locates an appropriate server to fulfil a client's request, forwards request to server, and returns results to client<br>
			<em>Client-side proxy</em>: intermediary that manages actual communication with broker<br>
			<em>Server-side proxy</em>: intermediary that manages actual communication with broker
		</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Attachment</em>: associates clients and servers with brokers (and optionally their proxies)</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>The client can only attach to a broker (potentially via a client-side proxy)</li>
				<li>The server can only attach to a broker (potentially via a server-side proxy)</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>Brokers add a layer of indirection, hence latency, between clients and servers. That layer may become a bottleneck</li>
				<li>A broker is a single point of failure</li>
				<li>A broker adds up-front complexity</li>
				<li>A broker is a target for security attacks</li>
				<li>A broker may be difficult to test</li>
			</ul>
		</td>
	</tr>
</table>

## Pipe-and-Filter Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Component-and-Connector</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>How to create compontents that transform streams of data into loosely-coupled, reusable parts. The parts are flexible and easily combined with one another.</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Data is transformed from a system's inputs to its outputs through a series of transformations performed by its filters connected by pipes.</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td>
			<em>Filter</em>: transforms the data read from its input; data can be sent to its output incrementally; filters can execute concurrently; important characteristics include processing rates, input/output data formats, and the transformation algorithm<br>
			<em>Pipe</em>: a connector that conveys the data from a filter's output to another filter's input; a pipe is uniplex; preserves the data it carries; important characteristics include buffer size, protocol of interaction, transmission speed, data format(s) the pipe allows
		</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Attachment</em>: associates output of filter to input of pipe and vice-versa</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>Pipes connect filter output ports to filter input ports</li>
				<li>Connected filters must agree on the type of data being passed along the connecting pipe</li>
				<li>Specializations of the pattern may restrict the association of components to an acyclic graph or a linear sequence, sometimes called a pipeline</li>
				<li>Other specializations may prescribe that components have certain named ports, such as <em>stdin</em>, <em>stdout</em></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>The pipe-and-filter pattern is not a good choice for an interactive system</li>
				<li>Large numbers of filters adds to computational overhead</li>
				<li>May not be appropriate for long-running computations</li>
			</ul>
		</td>
	</tr>
</table>

## Client-Server Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Component-and-Connector</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>A shared set of resources and services that are accessible from a centralized location, but also promotes modifiability, scalability and reuse. The resources themselves can be distributed across multiple nodes.</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Clients initiate interactions with servers, invoking services as needed from those servers and waiting for the results of those requests</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td>
			<em>Client</em>: invokes services of a server element; has ports that describes services they require<br>
			<em>Server</em>: provides services to clients; have ports that describe services they provide; important characteristics include maximum client connections per port, performance characteristics (throughput)<br>
			<em>Request/reply connector</em>: emplying a request/reply data protocol; used by client to invoke service; important characterics include calls are local or remote, encryption
		</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Attachment</em> associates clients with servers</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>Clients are connected to servers through request/reply connectors</li>
				<li>Server components can be clients to other servers</li>
				<li>Specializations may impose restrictions:
					<ul>
						<li>Number of attachments to a given port</li>
						<li>Alowed relations among servers</li>
					</ul>
				</li>
				<li>Components may be arranged in tiers</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>Server can be a performance bottleneck</li>
				<li>Server can be a single point of failure</li>
				<li>Decisions about where to locate functionality (client or server) are often complex and costly to change after system has been built</li>
			</ul>
		</td>
	</tr>
</table>

## Publish-Subscribe Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Component and Connector</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>How to support integration mechanisms where the messages between producers and consumers are transmitted without them being aware of the others' existence?</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Components publish and subscribe to events. When an event is announced by a component, the connector infrastructure dispatches the event to all registered subscribers.</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td><em>Any component</em> with at least one publish or subscribe port. Concerns include which events are published and subscribed to, and the granularity of events.<br>
			<em>The publish-subscribe connector</em> has <em>announce</em> and <em>listen</em> roles for components.</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Attachment</em> relation associates components by prescribing which components announce events (publishers) and which components are listening to events (subscribers)</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>All components are connected to an event distributor that may be viewed as a bus &mdash; connector &mdash; or a component. Constraints may restrict subscribers to what they can listen to.</li>
				<li>A component may be both a publisher and subscriber, having both types of ports.</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>Typically increases latency, has a negative effect on scalability and predictability of message delivery time</li>
				<li>Less control over ordering of messages; delivery of messages not guaranteed</li>
			</ul>
		</td>
	</tr>
</table>

## Map-Reduce Pattern

<table class="software-pattern">
	<tr>
		<th>Problem</th>
		<td>How to perform efficiently a distributed and parallel sort of a large data set and provide a simple means for the developer to specify the analysis to be done</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>Provides a framework for analysing a large distributed set of data that will execute in parallel on a set of processors. This allows for low latency and high availability.</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td><em>Map</em> is a function with multiple instances that performs the extract and transformation portions of the analysis<br>
			<em>Reduce</em> is a function that may be single or multiple instances to peform the load portion of the extract-transform-load<br>
			<em>Infrastructure</em> is required for deploying map and reduce instances, shepherding data between them, and detecting and recovering from failure</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td>
			<em>Deploy on</em> is the relation between an instance of a map or reduce function and the processor onto which it is installed<br>
			<em>Instantiate, monitor, and control</em> is the relation between infrastructure and the instances of map and reduce
		</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>
			<ul>
				<li>The data to be analyzed must exist as a set of files</li>
				<li>The map functions are stateless and do not communicate with each other</li>
				<li>The only commmunication between the map instances and the reduce instances is the data emitted from the map instances as &lt;key, value&gt; pairs</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>
			<ul>
				<li>For small data sets, the overhead of map-reduce is not justified</li>
				<li>Data sets incapable of decomposition into smaller sets loses the advantage of parallelism</li>
				<li>Operations that require multiple reduces are complex to orchestrate</li>
			</ul>
		</td>
	</tr>
</table>

## Multi-tier Pattern

<table class="software-pattern">
	<tr>
		<th>Group</th>
		<td>Component and Connector; Allocation</td>
	</tr>
	<tr>
		<th>Problem</th>
		<td>How can the system be split into independent computational structures and be distributed across differing server environments?</td>
	</tr>
	<tr>
		<th>Overview</th>
		<td>The execution structures of many systems are organized as a set of logical groupings of components (tier). A tier may be defined by the type of component, execution environment, or runtime purpose</td>
	</tr>
	<tr>
		<th>Elements</th>
		<td><em>Tier</em> is a logical grouping of components. Tiers may be formed on the basis of common computing platforms, in which case those platforms are also elements of the pattern.</td>
	</tr>
	<tr>
		<th>Relations</th>
		<td><em>Is part of</em>, to group components into tiers<br>
			<em>Communicates with</em>, shows how tiers and their components interact<br>
			<em>Allocated to</em>, in the case that tiers map to computing platforms</td>
	</tr>
	<tr>
		<th>Constraints</th>
		<td>A software component belongs exactly to one tier</td>
	</tr>
	<tr>
		<th>Weaknesses</th>
		<td>Substantial up-front cost and complexity</td>
	</tr>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-05/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>
	</ul>
</nav>