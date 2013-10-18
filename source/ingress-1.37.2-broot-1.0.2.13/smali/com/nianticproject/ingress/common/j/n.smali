.class public Lcom/nianticproject/ingress/common/j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nianticproject/ingress/common/j/ad;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/j/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/j/ad;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->b:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ae;->values()[Lcom/nianticproject/ingress/common/j/ae;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    .line 40
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ae;->values()[Lcom/nianticproject/ingress/common/j/ae;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/16 v2, 0x32

    const/4 v5, 0x0

    .line 87
    :try_start_0
    const-string/jumbo v0, "DeferredRenderer.drawAll"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 93
    sget-object v1, Lcom/nianticproject/ingress/common/j/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Probable Material leak: count (%d) > %d. Check that all Material instances are static."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ad;

    .line 99
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ad;->a()Lcom/nianticproject/ingress/common/j/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/j/ae;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move v7, v5

    .line 103
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 105
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ae;->values()[Lcom/nianticproject/ingress/common/j/ae;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ae;->name()Ljava/lang/String;

    move-result-object v8

    move v6, v5

    .line 107
    :goto_2
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v1, :cond_5

    .line 108
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/j/ad;

    .line 109
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/n;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    .line 110
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_4

    .line 112
    :try_start_2
    const-string/jumbo v3, "."

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ad;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ad;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v5

    .line 115
    :goto_3
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v3, :cond_2

    .line 116
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/j/m;

    invoke-interface {v3, v1}, Lcom/nianticproject/ingress/common/j/m;->a(Lcom/nianticproject/ingress/common/j/af;)V

    .line 115
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ad;->c()V

    .line 121
    :cond_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 107
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 123
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 103
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 131
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 134
    :cond_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 135
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 70
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/n;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
