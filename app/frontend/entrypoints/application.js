import "./main.scss";

import React, {createElement} from 'react';
import { createRoot } from 'react-dom/client';
import App from '@/components/views/home';
import dashboard1 from '@/components/views/dashboard';


const domContainer = document.querySelector('#home');
const home = createRoot(domContainer);
//home.render(createElement(App));

