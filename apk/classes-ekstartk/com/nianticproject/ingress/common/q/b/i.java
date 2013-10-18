package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.shared.aj;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;

public final class i
  implements c
{
  private final o a;
  private final HttpClient b;

  private i(o paramo, HttpClient paramHttpClient)
  {
    this.a = paramo;
    this.b = paramHttpClient;
  }

  private void a(h paramh, j paramj, ArrayList<e> paramArrayList, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    DataOutputStream localDataOutputStream = new DataOutputStream(paramByteArrayOutputStream);
    localDataOutputStream.writeShort(23);
    localDataOutputStream.writeLong(this.a.h());
    localDataOutputStream.writeUTF(this.a.c());
    localDataOutputStream.writeUTF(this.a.e());
    localDataOutputStream.writeUTF(this.a.f());
    localDataOutputStream.writeUTF(this.a.g());
    paramh.a(localDataOutputStream);
    if (paramj != null)
      paramj.a(localDataOutputStream);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
      ((e)localIterator.next()).a(localDataOutputStream);
    localDataOutputStream.flush();
  }

  private static void a(HttpEntity paramHttpEntity, h paramh, j paramj, ArrayList<e> paramArrayList)
  {
    DataInputStream localDataInputStream = new DataInputStream(paramHttpEntity.getContent());
    if (localDataInputStream.readUnsignedShort() != 23)
      throw new IOException("Invalid protocol version in response");
    paramh.a(localDataInputStream);
    if (paramj != null)
      paramj.a(localDataInputStream);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
      ((e)localIterator.next()).a(localDataInputStream);
    localDataInputStream.close();
  }

  public final void a(ArrayList<e> paramArrayList)
  {
    try
    {
      aj.a("GMMDataLoader.processRequests");
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      h localh = new h(this.a);
      j localj;
      long l1;
      HttpResponse localHttpResponse;
      long l2;
      if (this.a.h() == 0L)
      {
        localj = new j((byte)0);
        a(localh, localj, paramArrayList, localByteArrayOutputStream);
        HttpPost localHttpPost = new HttpPost(this.a.a());
        localHttpPost.setHeader("Content-Type", "application/binary");
        localHttpPost.setEntity(new ByteArrayEntity(localByteArrayOutputStream.toByteArray()));
        l1 = System.currentTimeMillis();
        localHttpResponse = this.b.execute(localHttpPost);
        if (localHttpResponse.getStatusLine() == null)
          break label263;
        l2 = localHttpResponse.getStatusLine().getStatusCode();
        label142: if (localHttpResponse.getEntity() == null)
          break label269;
      }
      label263: label269: for (long l3 = localHttpResponse.getEntity().getContentLength(); ; l3 = 0L)
      {
        a.a("GMMDataLoader", System.currentTimeMillis() - l1, l2, l3, 0L);
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity != null)
          a(localHttpEntity, localh, localj, paramArrayList);
        if ((localj != null) && (j.a(localj) != 0L))
          this.a.a(j.a(localj));
        if (localh.a() != null)
          this.a.a(localh.a());
        return;
        localj = null;
        break;
        l2 = 0L;
        break label142;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.i
 * JD-Core Version:    0.6.2
 */