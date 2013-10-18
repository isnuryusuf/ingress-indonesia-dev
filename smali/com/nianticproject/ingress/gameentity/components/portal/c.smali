.class final Lcom/nianticproject/ingress/gameentity/components/portal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/c;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/c;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/gameentity/components/portal/d;-><init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;B)V

    return-object v0
.end method
