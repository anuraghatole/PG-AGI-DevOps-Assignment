import React from "react";
import { render, screen, waitFor } from "@testing-library/react";
import axios from "axios";
import Home from "../pages/index";
import "@testing-library/jest-dom";

jest.mock("axios");

describe("Home Page Tests", () => {
  it("shows backend message if health is OK", async () => {
    axios.get.mockImplementation((url) => {
      if (url.includes("/api/health")) {
        return Promise.resolve({ data: { status: "healthy" } });
      } else if (url.includes("/api/message")) {
        return Promise.resolve({ data: { message: "Hello from backend!" } });
      }
    });

    render(<Home />);

    await waitFor(() => {
      expect(screen.getByText(/Backend is connected!/i)).toBeInTheDocument();
      expect(screen.getByText(/Hello from backend!/i)).toBeInTheDocument();
    });
  });
});
