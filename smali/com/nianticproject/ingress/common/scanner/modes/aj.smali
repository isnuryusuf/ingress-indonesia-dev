.class final Lcom/nianticproject/ingress/common/scanner/modes/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/g/g;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ah;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aj;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 1030
    invoke-static {v3}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1032
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aj;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/g/s;->a()Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v2

    .line 1034
    if-eqz v2, :cond_0

    .line 1036
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    return-object v1
.end method
