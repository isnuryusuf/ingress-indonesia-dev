.class public abstract Lcom/nianticproject/ingress/common/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/x/g",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/b;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/x/b;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/x/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/x/b;->b:Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/x/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/x/c;-><init>(Lcom/nianticproject/ingress/common/x/b;B)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation
.end method
