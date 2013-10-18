.class final Lcom/nianticproject/ingress/common/ui/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nianticproject/ingress/gameentity/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/f/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/c;->a:Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 193
    check-cast p1, Lcom/nianticproject/ingress/gameentity/f;

    check-cast p2, Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/c;->a:Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/common/ui/f/a;Lcom/nianticproject/ingress/gameentity/f;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/f/c;->a:Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-static {v2, p2}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/common/ui/f/a;Lcom/nianticproject/ingress/gameentity/f;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
