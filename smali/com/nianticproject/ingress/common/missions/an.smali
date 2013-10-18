.class final Lcom/nianticproject/ingress/common/missions/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/an;->c:Lcom/nianticproject/ingress/common/missions/af;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/an;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/an;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 6
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/an;->c:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/n;->a:Lcom/nianticproject/ingress/common/ui/elements/n;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/an;->c:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/an;->a:Ljava/lang/String;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/an;->b:Ljava/util/List;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/ao;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/missions/ao;-><init>(Lcom/nianticproject/ingress/common/missions/an;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/elements/i;->a(Lcom/nianticproject/ingress/common/ui/elements/n;Lcom/nianticproject/ingress/common/ui/elements/l;Ljava/util/Collection;Lcom/nianticproject/ingress/common/ui/elements/o;)V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string/jumbo v0, "showButterBar"

    return-object v0
.end method
