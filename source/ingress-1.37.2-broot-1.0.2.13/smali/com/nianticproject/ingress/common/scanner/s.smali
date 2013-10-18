.class final Lcom/nianticproject/ingress/common/scanner/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/i;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/s;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/s;->a:Lcom/nianticproject/ingress/common/ui/elements/i;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/s;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 525
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/s;->a:Lcom/nianticproject/ingress/common/ui/elements/i;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/n;->b:Lcom/nianticproject/ingress/common/ui/elements/n;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/s;->a:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/s;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/nianticproject/ingress/common/ui/elements/i;->a(Lcom/nianticproject/ingress/common/ui/elements/n;Lcom/nianticproject/ingress/common/ui/elements/l;Ljava/util/Collection;Lcom/nianticproject/ingress/common/ui/elements/o;)V

    .line 530
    return-object v6
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    const-string/jumbo v0, "showButterBar"

    return-object v0
.end method
