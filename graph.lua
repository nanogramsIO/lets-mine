-- Define the Graph class
Graph = {}
Graph.__index = Graph

-- Create a new instance of the Graph class
function Graph:new()
    local graph = {}
    setmetatable(graph, Graph)
    graph.nodes = {}
    return graph
end

-- Add a node to the graph
function Graph:addNode(node)
    self.nodes[node] = {}
end

-- Remove a node from the graph
function Graph:removeNode(node)
    self.nodes[node] = nil
    for _, adjacentNodes in pairs(self.nodes) do
        for adjacentNode, _ in pairs(adjacentNodes) do
            if adjacentNode == node then
                adjacentNodes[adjacentNode] = nil
            end
        end
    end
end

-- Add an edge between two nodes in the graph
function Graph:addEdge(node1, node2, weight)
    self.nodes[node1][node2] = weight
    self.nodes[node2][node1] = weight
end

-- Remove an edge between two nodes in the graph
function Graph:removeEdge(node1, node2)
    self.nodes[node1][node2] = nil
    self.nodes[node2][node1] = nil
end

-- Get the weight of the edge between two nodes in the graph
function Graph:getEdgeWeight(node1, node2)
    return self.nodes[node1][node2]
end

-- Get a list of all nodes in the graph
function Graph:getNodes()
    local nodes = {}
    for node, _ in pairs(self.nodes) do
        table.insert(nodes, node)
    end
    return nodes
end

-- Get a list of all edges in the graph
function Graph:getEdges()
    local edges = {}
    for node1, adjacentNodes in pairs(self.nodes) do
        for node2, weight in pairs(adjacentNodes) do
            if not edges[node2 .. node1] then
                table.insert(edges, {node1, node2, weight})
                edges[node1 .. node2] = true
            end
        end
    end
    return edges
end
