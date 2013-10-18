.class public final Lcom/nianticproject/ingress/common/inventory/ui/v;
.super Lcom/nianticproject/ingress/common/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# static fields
.field private static final c:[Lcom/nianticproject/ingress/common/inventory/ui/ae;


# instance fields
.field private A:Lcom/nianticproject/ingress/common/ui/widget/aa;

.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private final e:Lcom/nianticproject/ingress/common/g/e;

.field private f:Lcom/nianticproject/ingress/common/inventory/ui/al;

.field private final g:Lcom/nianticproject/ingress/common/inventory/ui/ac;

.field private final h:Lcom/nianticproject/ingress/common/j/av;

.field private final i:Lcom/nianticproject/ingress/common/h/l;

.field private final j:Lcom/nianticproject/ingress/common/j/v;

.field private final k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

.field private l:Z

.field private m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

.field private q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final r:Lcom/nianticproject/ingress/common/inventory/ui/ao;

.field private final s:Lcom/nianticproject/ingress/common/j/f;

.field private t:Lcom/nianticproject/ingress/common/ui/widget/f;

.field private u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private v:Lcom/nianticproject/ingress/common/ui/widget/f;

.field private w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private x:I

.field private y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/inventory/ui/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x7

    new-array v10, v0, [Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const/4 v6, 0x0

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v1, "All"

    const-string/jumbo v2, "ALL"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v0, v10, v6

    const/4 v0, 0x1

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "Media"

    const-string/jumbo v6, "Media"

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->c:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/nianticproject/ingress/common/inventory/ui/aj;->c:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    const/4 v0, 0x2

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "ResShield"

    const-string/jumbo v6, "Mods"

    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->c()Ljava/util/EnumSet;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    const/4 v0, 0x3

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "PortalLinkKeys"

    const-string/jumbo v6, "Portal Keys"

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/aj;->b:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    sget-object v9, Lcom/nianticproject/ingress/common/inventory/ui/aj;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    const/4 v0, 0x4

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "PowerCube"

    const-string/jumbo v6, "Power Cubes"

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    const/4 v0, 0x5

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "Resonator"

    const-string/jumbo v6, "Resonators"

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    const/4 v0, 0x6

    new-instance v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    const-string/jumbo v5, "EmpBuster"

    const-string/jumbo v6, "Weapons"

    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->b()Ljava/util/EnumSet;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/nianticproject/ingress/common/inventory/ui/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    aput-object v4, v10, v0

    sput-object v10, Lcom/nianticproject/ingress/common/inventory/ui/v;->c:[Lcom/nianticproject/ingress/common/inventory/ui/ae;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/inventory/ui/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/h/l;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/f;-><init>()V

    .line 175
    new-instance v0, Lcom/nianticproject/ingress/common/j/v;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/v;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->j:Lcom/nianticproject/ingress/common/j/v;

    .line 176
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ab;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    .line 179
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    .line 187
    invoke-static {}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c()Lcom/nianticproject/ingress/common/j/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->s:Lcom/nianticproject/ingress/common/j/f;

    .line 198
    invoke-static {}, Lcom/google/a/c/hc;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->z:Ljava/util/Map;

    .line 203
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 204
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->h:Lcom/nianticproject/ingress/common/j/av;

    .line 205
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->e:Lcom/nianticproject/ingress/common/g/e;

    .line 206
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->i:Lcom/nianticproject/ingress/common/h/l;

    .line 207
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ac;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->g:Lcom/nianticproject/ingress/common/inventory/ui/ac;

    .line 208
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ao;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->r:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    .line 211
    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/v;->c:[Lcom/nianticproject/ingress/common/inventory/ui/ae;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 212
    iget-object v5, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->z:Ljava/util/Map;

    iget-object v6, v4, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/v;->c:[Lcom/nianticproject/ingress/common/inventory/ui/ae;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/Stage;)I
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/nianticproject/ingress/common/inventory/ui/ae;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 458
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 459
    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/y;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/y;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 471
    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setWidth(F)V

    .line 472
    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/common/inventory/ui/aj;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 478
    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/z;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/z;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 489
    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setWidth(F)V

    .line 490
    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)V
    .locals 5
    .parameter

    .prologue
    .line 405
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    const v1, 0x3bc49ba6

    mul-float/2addr v1, v0

    .line 407
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 409
    iget-object v0, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 411
    iget-object v3, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eq v0, v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/aj;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 414
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, v2, v3}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/aj;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 424
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 428
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->h()V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ae;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3e19999a

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearActions()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->clearActions()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setWidth(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    return-object v0
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/inventory/ui/v;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3e19999a

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearActions()V

    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->clearActions()V

    .line 326
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->i()V

    .line 329
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 331
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 334
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 337
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 340
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ac;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->g:Lcom/nianticproject/ingress/common/inventory/ui/ac;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    const v1, 0x3bc49ba6

    mul-float/2addr v1, v0

    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 386
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    .line 387
    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eq v0, v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, v2, v3}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 398
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 402
    return-void
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->d:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    .line 556
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->f:Lcom/nianticproject/ingress/common/inventory/ui/al;

    if-nez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 558
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->c()F

    move-result v4

    .line 562
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->clear()V

    .line 563
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->f:Lcom/nianticproject/ingress/common/inventory/ui/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    new-instance v5, Lcom/nianticproject/ingress/common/inventory/ui/af;

    invoke-direct {v5, v1}, Lcom/nianticproject/ingress/common/inventory/ui/af;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/inventory/ui/al;->a(Lcom/google/a/a/ao;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aa;->a:[I

    iget-object v5, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/inventory/ui/aj;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a(Lcom/nianticproject/ingress/common/inventory/ui/ab;Ljava/util/List;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v6, v6, Lcom/nianticproject/ingress/common/inventory/ui/ae;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    :goto_3
    if-ne v1, v3, :cond_6

    .line 569
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(F)V

    .line 575
    :goto_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b()I

    move-result v0

    if-nez v0, :cond_7

    .line 576
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 577
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "No Items"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 563
    :pswitch_0
    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->b(Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->c(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-virtual {v3, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    .line 579
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    goto/16 :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->e:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->i:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/j/v;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->j:Lcom/nianticproject/ingress/common/j/v;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/j/f;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->s:Lcom/nianticproject/ingress/common/j/f;

    return-object v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ao;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->r:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    return-object v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/j/av;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->h:Lcom/nianticproject/ingress/common/j/av;

    return-object v0
.end method

.method static synthetic q(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->j:Lcom/nianticproject/ingress/common/j/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/v;->a()V

    .line 231
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v11, 0x40a0

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 236
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 238
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v3, 0x3f19999a

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 239
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    const v4, 0x3f11eb85

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 241
    const v0, 0x3d23d70a

    invoke-static {v0}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v5

    .line 243
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    const-string/jumbo v0, "large"

    const-class v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v6, v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 248
    const-string/jumbo v0, "inventory"

    const-class v6, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    invoke-virtual {p1, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    .line 249
    new-instance v6, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-direct {v6, v3, v4, v0, v7}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;-><init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;)V

    iput-object v6, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/nianticproject/ingress/common/ui/widget/bc;)V

    .line 252
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 253
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->g:Lcom/nianticproject/ingress/common/inventory/ui/ac;

    sget-object v6, Lcom/nianticproject/ingress/common/ui/widget/ag;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-direct {v0, p1, v3, v4, v6}, Lcom/nianticproject/ingress/common/ui/widget/aa;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->A:Lcom/nianticproject/ingress/common/ui/widget/aa;

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->A:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-array v3, v9, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v3, 0x3ca3d70a

    invoke-static {v3}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->e(Lcom/a/a/e;)Lcom/a/a/c;

    .line 261
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 264
    const-string/jumbo v0, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 265
    const-string/jumbo v0, "menu-item-button-list"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 268
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 269
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 273
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 275
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 279
    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    iget-object v6, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->n:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v6

    const v7, 0x3bc49ba6

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    invoke-direct {p0, v0, v3}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    invoke-static {}, Lcom/nianticproject/ingress/common/inventory/ui/aj;->values()[Lcom/nianticproject/ingress/common/inventory/ui/aj;

    move-result-object v7

    array-length v8, v7

    move v0, v2

    :goto_1
    if-ge v0, v8, :cond_1

    aget-object v9, v7, v0

    invoke-direct {p0, v9, v3}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/aj;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    .line 281
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->i()V

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    .line 284
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/w;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/common/inventory/ui/w;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->setWidth(F)V

    .line 294
    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->d:Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/x;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/common/inventory/ui/x;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 302
    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->d:Ljava/util/Set;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setVisible(Z)V

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setWidth(F)V

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->t:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->v:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->h(Lcom/a/a/e;)Lcom/a/a/c;

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 316
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 317
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 318
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 320
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->j()V

    .line 321
    return-void

    .line 294
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 302
    goto :goto_3
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/al;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->f:Lcom/nianticproject/ingress/common/inventory/ui/al;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    .line 220
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;

    .line 497
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g()F

    move-result v2

    iput v2, v1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->c:F

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eq v0, v1, :cond_1

    .line 501
    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->l:Z

    .line 504
    :cond_1
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->j()V

    .line 742
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->r:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(F)Z

    .line 744
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b(Lcom/nianticproject/ingress/common/inventory/ui/ab;)V

    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(F)V

    .line 524
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->c:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->h()V

    .line 520
    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 753
    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 757
    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->j:Lcom/nianticproject/ingress/common/j/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/v;->dispose()V

    .line 760
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->A:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    .line 528
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->y:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->p:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g()F

    move-result v1

    iput v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->c:F

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->k:Lcom/nianticproject/ingress/common/inventory/ui/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a(Lcom/nianticproject/ingress/common/inventory/ui/ab;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/v;->f:Lcom/nianticproject/ingress/common/inventory/ui/al;

    .line 548
    return-void
.end method
