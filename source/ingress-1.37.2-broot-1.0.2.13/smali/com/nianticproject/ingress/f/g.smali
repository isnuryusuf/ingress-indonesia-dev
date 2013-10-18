.class final Lcom/nianticproject/ingress/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nianticproject/ingress/f/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/f/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/nianticproject/ingress/f/g;->b:Lcom/nianticproject/ingress/f/e;

    iput p2, p0, Lcom/nianticproject/ingress/f/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/f/g;->b:Lcom/nianticproject/ingress/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/e;->a(Lcom/nianticproject/ingress/f/e;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    iget v1, p0, Lcom/nianticproject/ingress/f/g;->a:I

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method
