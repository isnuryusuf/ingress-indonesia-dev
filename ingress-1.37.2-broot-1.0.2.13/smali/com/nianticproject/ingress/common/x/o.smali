.class public final Lcom/nianticproject/ingress/common/x/o;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/common/x/a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/a/a/ba;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ba",
            "<TR;>;TR;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/nianticproject/ingress/common/x/o;->a:Lcom/google/a/a/ba;

    .line 15
    iput-object p3, p0, Lcom/nianticproject/ingress/common/x/o;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/o;->a:Lcom/google/a/a/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/o;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
