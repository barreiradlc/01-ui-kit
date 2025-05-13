import { AiImage, Button, Input } from 'curiosity-ui';

function App() {
  return (
    <div className='flex flex-col p-6 '>
      <Input placeholder="Type something..." />
      <Button variant="danger">Remove</Button>
      <AiImage prompt="Hedgehog" />
    </div>
  );
}

export { App };
