// src/lib/apiBase.js
const API_BASE = (process.env.ALLOWED_ORIGINS || '').replace(/\/$/, '');
export default API_BASE;

