.class final Lcom/nianticproject/ingress/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/f/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/f/e;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nianticproject/ingress/f/h;->a:Lcom/nianticproject/ingress/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/f/h;->a:Lcom/nianticproject/ingress/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/e;->a(Lcom/nianticproject/ingress/f/e;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method
