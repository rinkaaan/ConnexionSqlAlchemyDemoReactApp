import { createBrowserRouter, RouterProvider } from 'react-router-dom'
import { PetService } from './openapi-client/index.ts'

const router = createBrowserRouter([
  {
    path: '/',
    loader: async () => {
      const pets = await PetService.getItems()
      console.log(pets)
      return null
    },
    Component: null,
  },
])

export default function App() {
  return <RouterProvider router={router} />
}
