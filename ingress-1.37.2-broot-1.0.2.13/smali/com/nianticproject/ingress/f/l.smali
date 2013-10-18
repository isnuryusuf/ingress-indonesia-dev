.class final Lcom/nianticproject/ingress/f/l;
.super Lcom/nianticproject/ingress/service/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/f/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/f/k;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nianticproject/ingress/f/l;->a:Lcom/nianticproject/ingress/f/k;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/f/l;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->d(Lcom/nianticproject/ingress/f/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/d;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/f/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 135
    check-cast p3, Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/f/l;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->c(Lcom/nianticproject/ingress/f/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/f/l;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->d(Lcom/nianticproject/ingress/f/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/d;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/nianticproject/ingress/f/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 141
    :cond_0
    return-void
.end method
