.class final Lcom/nianticproject/ingress/common/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/ck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/b/ck",
        "<",
        "Lcom/nianticproject/ingress/common/c/ba;",
        "Lcom/nianticproject/ingress/common/c/n",
        "<+",
        "Lcom/badlogic/gdx/utils/Disposable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/i;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/i;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/j;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 198
    check-cast p1, Lcom/nianticproject/ingress/common/c/ba;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/j;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/c/i;->f(Lcom/nianticproject/ingress/common/c/ba;)I

    move-result v0

    return v0
.end method
