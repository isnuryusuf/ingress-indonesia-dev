.class final Lcom/nianticproject/ingress/n/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/ae;

.field final synthetic b:Lcom/nianticproject/ingress/n/ab;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/ab;Lcom/nianticproject/ingress/n/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ac;->b:Lcom/nianticproject/ingress/n/ab;

    iput-object p2, p0, Lcom/nianticproject/ingress/n/ac;->a:Lcom/nianticproject/ingress/n/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ac;->b:Lcom/nianticproject/ingress/n/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ab;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/n/ad;

    .line 150
    iget-object v2, p0, Lcom/nianticproject/ingress/n/ac;->a:Lcom/nianticproject/ingress/n/ae;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/n/ad;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
