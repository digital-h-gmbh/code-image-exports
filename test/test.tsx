import Head from 'next/head';
import { ThemeProvider } from 'styled-components';
import GlobalStyle from '../src/styles/globals';
import theme from '../src/styles/theme';

export default function App({ Component, pageProps }) {
  return (
    <><Head>
          <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="/images/apple-touch-icon.png"
          />
          <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="/images/favicon-32x32.png"
          />
          <link
            rel="icon"
            type="image/png"
            sizes="16x16"
            href="/images/favicon-16x16.png"
          />
        </Head>
      <ThemeProvider theme={theme}>
        <GlobalStyle />
        <Component {...pageProps} />
      </ThemeProvider>
    </>
  );
}
