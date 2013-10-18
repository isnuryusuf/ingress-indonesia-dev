.class public Lcom/nianticproject/ingress/common/scanner/ek;
.super Lcom/nianticproject/ingress/common/scanner/ga;
.source "SourceFile"


# static fields
.field private static final i:Lcom/nianticproject/ingress/common/w/aa;

.field private static final j:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/Object;",
            "Lcom/nianticproject/ingress/common/scanner/gd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Lcom/nianticproject/ingress/shared/af;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/ek;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/ek;->i:Lcom/nianticproject/ingress/common/w/aa;

    .line 25
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v1

    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/el;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/gd;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Ljava/lang/Object;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v4

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->c(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/nianticproject/ingress/common/scanner/gd;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    new-instance v4, Lcom/nianticproject/ingress/common/scanner/gd;

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Ljava/lang/Object;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v5

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->c(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    const-string/jumbo v7, "FlipCardADA"

    invoke-direct {v4, v5, v6, v7}, Lcom/nianticproject/ingress/common/scanner/gd;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    sget-object v3, Lcom/nianticproject/ingress/gameentity/components/c;->b:Lcom/nianticproject/ingress/gameentity/components/c;

    new-instance v4, Lcom/nianticproject/ingress/common/scanner/gd;

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/c;->b:Lcom/nianticproject/ingress/gameentity/components/c;

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Ljava/lang/Object;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v5

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->c(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const-string/jumbo v6, "FlipCardJarvis"

    invoke-direct {v4, v5, v0, v6}, Lcom/nianticproject/ingress/common/scanner/gd;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/ek;->j:Lcom/google/a/c/dh;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/ge;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/gd;Lcom/nianticproject/ingress/shared/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/ga;-><init>(Lcom/nianticproject/ingress/common/scanner/ge;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/gd;)V

    .line 120
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/ek;->k:Lcom/nianticproject/ingress/shared/af;

    .line 121
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/scanner/ge;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/scanner/ek;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Lcom/nianticproject/ingress/common/scanner/ek;->b(Lcom/nianticproject/ingress/gameentity/components/Resource;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ek;->j:Lcom/google/a/c/dh;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/gd;

    .line 104
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ek;

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/nianticproject/ingress/common/scanner/ek;-><init>(Lcom/nianticproject/ingress/common/scanner/ge;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/gd;Lcom/nianticproject/ingress/shared/af;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/scanner/gd;
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ek;->j:Lcom/google/a/c/dh;

    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/ek;->b(Lcom/nianticproject/ingress/gameentity/components/Resource;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/gd;

    return-object v0
.end method

.method private static b(Lcom/nianticproject/ingress/gameentity/components/Resource;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/el;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 75
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 81
    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/nianticproject/ingress/common/scanner/gb;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/ga;->a(Lcom/nianticproject/ingress/common/scanner/gb;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/ga;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    return-void
.end method

.method public final bridge synthetic a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/ga;->a(F)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ek;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/ga;->dispose()V

    return-void
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ek;->k:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()J
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/ga;->k()J

    move-result-wide v0

    return-wide v0
.end method
