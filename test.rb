random = (0...5).map { ('a'..'z').to_a[rand(26)] }.join
p random