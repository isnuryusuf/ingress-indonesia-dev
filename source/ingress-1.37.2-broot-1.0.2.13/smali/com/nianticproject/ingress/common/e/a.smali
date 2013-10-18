.class public abstract Lcom/nianticproject/ingress/common/e/a;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/model/k;

.field private final b:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Lcom/nianticproject/ingress/common/ui/widget/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/nianticproject/ingress/common/ui/widget/w;

.field private h:Lcom/nianticproject/ingress/common/ui/widget/w;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    const-string/jumbo v0, "CheatsActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/google/a/c/dv;

    invoke-direct {v0}, Lcom/google/a/c/dv;-><init>()V

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->b:Lcom/google/a/c/du;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->c:Ljava/util/Map;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->f:Ljava/util/Map;

    .line 64
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 65
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/t;->b(J)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    .line 67
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/e/a;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/e/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/e/b;-><init>(Lcom/nianticproject/ingress/common/e/a;B)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/shared/af;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/shared/af;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/nianticproject/ingress/shared/af;)I
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/a;)Lcom/google/a/c/du;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->b:Lcom/google/a/c/du;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/common/ui/widget/w;)Lcom/nianticproject/ingress/common/ui/widget/w;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/a;->g:Lcom/nianticproject/ingress/common/ui/widget/w;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/shared/af;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/shared/af;I)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/af;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/e/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/common/ui/widget/w;)Lcom/nianticproject/ingress/common/ui/widget/w;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/a;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/e/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/widget/w;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->g:Lcom/nianticproject/ingress/common/ui/widget/w;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/widget/w;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/a;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    return v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/e/a;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/shared/af;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->d:I

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/common/e/a;->a(Ljava/util/Map;I)V

    iget v0, p0, Lcom/nianticproject/ingress/common/e/a;->e:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/t;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/e/a;->a(I)V

    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/shared/af;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/e/a;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/e/a;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const v2, 0x3dcccccd

    .line 72
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 73
    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 74
    return-void
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method
