.class public final Lcom/nianticproject/ingress/common/c/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;

.field private static final b:[Lcom/nianticproject/ingress/common/c/b;

.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nianticproject/ingress/common/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/c/az;",
            "Lcom/nianticproject/ingress/common/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/nianticproject/ingress/common/scanner/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    const-string/jumbo v0, "Update Scanner Audio Ambient"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/c/aw;->a:Lcom/nianticproject/ingress/common/t/b;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/b;

    new-instance v1, Lcom/nianticproject/ingress/common/c/b;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->am:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v1, v2, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->an:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->ao:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->ap:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/c/aw;->b:[Lcom/nianticproject/ingress/common/c/b;

    .line 144
    new-instance v0, Lcom/nianticproject/ingress/common/c/ax;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/ax;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/c/aw;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/ed;)V
    .locals 4
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/aw;->e:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 95
    invoke-static {}, Lcom/nianticproject/ingress/common/c/d;->a()Lcom/nianticproject/ingress/common/c/a;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/c/az;->c:Lcom/nianticproject/ingress/common/c/az;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/nianticproject/ingress/common/c/d;->b()Lcom/nianticproject/ingress/common/c/a;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/c/az;->b:Lcom/nianticproject/ingress/common/c/az;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/nianticproject/ingress/common/c/d;->c()Lcom/nianticproject/ingress/common/c/a;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/c/az;->d:Lcom/nianticproject/ingress/common/c/az;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/nianticproject/ingress/common/c/a;

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->ak:Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/aw;->b:[Lcom/nianticproject/ingress/common/c/b;

    const v3, 0x3f4ccccd

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/c/a;-><init>(Lcom/nianticproject/ingress/common/c/ba;[Lcom/nianticproject/ingress/common/c/b;F)V

    .line 109
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/c/az;->a:Lcom/nianticproject/ingress/common/c/az;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    .line 197
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/a;->a()V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/common/c/aw;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    sget-object v1, Lcom/nianticproject/ingress/common/c/aw;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/a;->b()F

    move-result v0

    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/aw;->a()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/common/c/az;->a:Lcom/nianticproject/ingress/common/c/az;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/c/a;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    sget-object v1, Lcom/nianticproject/ingress/common/c/ay;->b:[I

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/c/e;->d()Lcom/nianticproject/ingress/common/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/f;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/c/a;->a(FF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->e:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f19999a

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    const v1, 0x3e4ccccd

    goto :goto_1

    .line 118
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/common/c/aw;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 119
    return-void

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-static {p1}, Lcom/nianticproject/ingress/common/c/az;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/c/az;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/aw;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    .line 188
    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/c/a;->a(F)V

    .line 189
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/a;

    .line 207
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/a;->c()V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method
