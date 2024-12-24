import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class OrderService {
  private baseUrl = 'https://phase-3-git-crt-20216120-dev.apps.rm2.thpm.p1.openshiftapps.com';  // The base URL for your API

  constructor(private http: HttpClient) {}

  // Create a new order
  createOrder(orderData: any): Observable<any> {
    return this.http.post(`${this.baseUrl}/create_order`, orderData);
  }

  // Get all orders for the logged-in user
  getMyOrders(): Observable<any> {
    return this.http.get(`${this.baseUrl}/my_orders`);
  }

  // Method to get details of a specific order by order ID
  getOrderDetails(orderId: number): Observable<any> {
    return this.http.get(`${this.baseUrl}/order/${orderId}`);
  }
  cancelOrder(orderId: number): Observable<any> {
    return this.http.post<any>(`${this.baseUrl}/order/${orderId}/cancel`, {});
  }
}
