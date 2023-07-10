import { useState, useEffect, useContext } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { api } from '../../services/api';
import { ProductProps } from '../home';
import { BsCartPlus } from 'react-icons/bs';
import { CartContext } from '../../contexts/CartContext';
import toast from 'react-hot-toast';

export function ProductDetail() {
  const { id } = useParams();
  const [product, setProduct] = useState<ProductProps>();
  const { addItemCart } = useContext(CartContext);
  const navigate = useNavigate();
  const [selectedVoltage, setSelectedVoltage] = useState('127V');

  useEffect(() => {
    async function getProduct() {
      const response = await api.get(`http://127.0.0.1:8000/api/produtos/${id}`);
      setProduct(response.data);
    }

    getProduct();
  }, [id]);

  function handleAddItem(product: ProductProps) {
    toast.success("Produto adicionado no carrinho.", {
      style: {
        borderRadius: 10,
        backgroundColor: "#121212",
        color: "#FFF"
      }
    });
    addItemCart(product);

    navigate("/cart");
  }

  return (
    <div>
      <main className="w-full max-w-7xl px-4 mx-auto my-6">
        {product && (
          <section className="w-full">
            <div className="flex flex-col lg:flex-row">
              <img
                className="flex-1 w-full max-h-72 object-contain"
                src={product?.foto}
                alt={product?.item}
              />

              <div className="flex-1">
                <p className="font-bold text-2xl mt-4 mb-2">{product?.item}</p>
                <p className="my-4">{product?.descricao}</p>
                <strong className="text-zinc-700/90 text-xl">
                  {product.preco.toLocaleString("pt-BR", { style: "currency", currency: "BRL" })}
                </strong>
                <div className="flex items-center mt-4">
                  <label htmlFor="voltage" className="mr-2">Potência:</label>
                  <select
                    id="voltage"
                    value={selectedVoltage}
                    onChange={(e) => setSelectedVoltage(e.target.value)}
                    className="border rounded px-2 py-1"
                  >
                    <option value="127V">127V</option>
                    <option value="220V">220V</option>
                  </select>
                </div>
                <button className="bg-zinc-900 p-1 rounded ml-3" onClick={() => handleAddItem(product)}>
                  <BsCartPlus size={20} color="#FFF" />
                </button>
              </div>

            </div>
          </section>
        )}
      </main>
    </div>
  );
}
