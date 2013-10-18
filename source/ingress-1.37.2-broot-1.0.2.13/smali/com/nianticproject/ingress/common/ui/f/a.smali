.class public final Lcom/nianticproject/ingress/common/ui/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/a/d/u;

.field private d:Lcom/nianticproject/ingress/common/ui/f/d;

.field private final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/f/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/nianticproject/ingress/common/ui/f/a;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->b:Ljava/util/List;

    .line 193
    new-instance v0, Lcom/nianticproject/ingress/common/ui/f/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/f/c;-><init>(Lcom/nianticproject/ingress/common/ui/f/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->e:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/f/a;Lcom/nianticproject/ingress/gameentity/f;)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/a;->c:Lcom/google/a/d/u;

    invoke-virtual {v1, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/f;)D
    .locals 2
    .parameter

    .prologue
    .line 143
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/a;->c:Lcom/google/a/d/u;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/f/a;)Lcom/nianticproject/ingress/common/ui/f/d;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->d:Lcom/nianticproject/ingress/common/ui/f/d;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/a;->b:Ljava/util/List;

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->d:Lcom/nianticproject/ingress/common/ui/f/d;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/ui/f/b;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/ui/f/b;-><init>(Lcom/nianticproject/ingress/common/ui/f/a;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/a/d/u;Ljava/util/Collection;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/u;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 63
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    sget-object v0, Lcom/nianticproject/ingress/common/ui/f/a;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Ljava/util/List;)V

    .line 109
    :goto_2
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :cond_2
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/a;->c:Lcom/google/a/d/u;

    .line 75
    invoke-static {p2}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->e:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 80
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x1

    move v2, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 88
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 89
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/gameentity/f;)D

    move-result-wide v7

    .line 93
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 94
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/gameentity/f;)D

    move-result-wide v3

    .line 95
    sub-double v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v10, 0x4076800000000000L

    rem-double/2addr v3, v10

    const-wide v10, 0x4066800000000000L

    cmpl-double v1, v3, v10

    if-lez v1, :cond_4

    const-wide v10, 0x4076800000000000L

    sub-double v3, v10, v3

    :cond_4
    const-wide v10, 0x4056800000000000L

    cmpg-double v1, v3, v10

    if-gez v1, :cond_3

    .line 103
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 101
    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 108
    :cond_7
    invoke-direct {p0, v6}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/f/d;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/a;->d:Lcom/nianticproject/ingress/common/ui/f/d;

    .line 137
    return-void
.end method

.method public final b()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/a;->c:Lcom/google/a/d/u;

    return-object v0
.end method
