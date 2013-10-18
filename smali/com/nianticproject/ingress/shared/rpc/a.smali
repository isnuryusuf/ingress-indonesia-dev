.class public final Lcom/nianticproject/ingress/shared/rpc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/a/a/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/aj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/a/a/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/aj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/a;->a:Lcom/google/a/a/aj;

    .line 29
    invoke-static {p2}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/a;->b:Lcom/google/a/a/aj;

    .line 30
    return-void
.end method
