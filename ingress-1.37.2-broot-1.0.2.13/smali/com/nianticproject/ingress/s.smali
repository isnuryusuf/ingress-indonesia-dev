.class final Lcom/nianticproject/ingress/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/ui/n;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nianticproject/ingress/s;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/s;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/AndroidComm;)V

    .line 347
    iget-object v0, p0, Lcom/nianticproject/ingress/s;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->i(Lcom/nianticproject/ingress/AndroidComm;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c;

    .line 348
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c;->e()V

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method
