install.packages("igraph")
library(igraph)

# 1. R-функция для создания матрицы смежности из случайных данных
create_adjacency_matrix <- function(nodes, edges)
adjacency_matrix <- matrix(0, nrow = nodes, ncol = nodes)
for (i in 1:edges) 
from <- sample(1:nodes, 1)
to <- sample(1:nodes, 1)
if (from != to)
adjacency_matrix[from, to] <- 1
adjacency_matrix[to, from] <- 1
rownames(adjacency_matrix) <- colnames(adjacency_matrix) <- 1:nodes
return(adjacency_matrix)


# 2. Создание графа на основе матрицы смежности
create_graph <- function(adjacency_matrix)
  g <- graph_from_adjacency_matrix(adjacency_matrix, mode = "undirected")
  return(g)

# 3. Визуализация графа с разными вариантами укладки
visualize_graph <- function(graph)
plot(graph, layout = layout_with_fr(graph), main = "Force-Directed Layout")
plot(graph, layout = layout_in_circle(graph), main = "Circular Layout")
plot(graph, layout = layout_randomly(graph), main = "Random Layout")

# Цветовая палитра для раскраски узлов
node_colors <- rainbow(graph)

# Создание и отображение графа с разными укладками
for (i in 1:length(layout))
par(mfrow=c(1,1))
plot(
    graph,
    layout = layout[[i]],
    vertex.color = node_colors,
    vertex.size = 10,
    vertex.label.cex = 0.8,
    main = paste("Граф с укладкой", i)
  legend("topright", legend = unique(node_colors), fill = unique(node_colors), inset = 0.05)

# Вызов функций
nodes <- 10
edges <- 15
adjacency_matrix <- create_adjacency_matrix(nodes, edges)
graph <- create_graph(adjacency_matrix)
visualize_graph(graph)

# 4. Сохранение матрицы смежности в файл
write.csv(adjacency_matrix, "adjacency_matrix.csv")

# 5. Сохранение графа в файл
saveRDS(graph, "graph.rds")
png("payment_graph.png", width = 800, height = 800)
plot(graph, vertex.color = "lightblue")
dev.off()