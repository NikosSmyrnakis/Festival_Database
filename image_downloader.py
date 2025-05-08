import os
import requests

output_dir = "images"
os.makedirs(output_dir, exist_ok=True)

base_url = "https://picsum.photos/seed/{}/64/64"

for i in range(1, 51):
    seed = f"img{i}"
    url = base_url.format(seed)
    response = requests.get(url)
    
    if response.status_code == 200:
        with open(os.path.join(output_dir, f"IMG_{i}.jpg"), "wb") as f:
            f.write(response.content)
        print(f"Saved IMG_{i}.jpg")
    else:
        print(f"Failed to download image {i}")