import { useEffect, useState, useContext } from 'react';
import { BsCartPlus } from 'react-icons/bs';
import { api } from '../../services/api';
import { CartContext } from '../../contexts/CartContext';
import toast from 'react-hot-toast';
import { Link } from 'react-router-dom';

export interface ProductProps {
  id: number;
  marca: string;
  item: string;
  foto: string;
  descricao: string;
  tensao: number;
  preco: number;
}

export function Home() {
  const { addItemCart } = useContext(CartContext);
  const [products, setProducts] = useState<ProductProps[]>([]);

  useEffect(() => {
    async function getProducts() {
      const response = await api.get("http://127.0.0.1:8000/api/produtos");
      setProducts(response.data);
    }

    getProducts();
  }, []);

  function handleAddCartItem(product: ProductProps) {
    toast.success("Produto adicionado no carrinho.", {
      style: {
        borderRadius: 10,
        backgroundColor: "#121212",
        color: "#FFF"
      }
    });
    addItemCart(product);
  }

  return (
    <div>
      <main className="w-full max-w-7xl px-4 mx-auto">
        <h1 className="font-bold text-2xl mb-4 mt-10 text-center">Refrigeradores em destaque:</h1>

        <div className="grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3 text-center">
          {products.map((product) => (
            <section key={product.id} className="w-full">
              <Link to={`/product/${product.id}`}>
                <img
                  className="w-full rounded-lg max-h-72 object-contain hover:scale-105"
                  src={product.foto}
                  alt={product.item}
                />
                <p className="font-medium mt-1 mb-2">{product.item}</p>
              </Link>

              <div className="center gap-3 items-center">
                <strong className="text-zinc-700/90 mr-2">
                  {product.preco ? product.preco.toLocaleString("pt-BR", { style: "currency", currency: "BRL" }) : ''}
                </strong>
                <button className="bg-zinc-900 p-1 rounded" onClick={() => handleAddCartItem(product)}>
                  <BsCartPlus size={20} color="#FFF" />
                </button>
              </div>

            </section>
          ))}
        </div>
      </main>
    </div>
  );
}
