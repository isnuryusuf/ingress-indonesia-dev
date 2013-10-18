.class public Lcom/nianticproject/ingress/common/ui/g/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bb;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/ui/g/l;

.field private final c:Lcom/nianticproject/ingress/common/ui/g/s;

.field private final d:Lcom/google/a/c/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/am",
            "<",
            "Lcom/nianticproject/ingress/common/ui/g/h;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/a/c/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/am",
            "<",
            "Lcom/nianticproject/ingress/common/ui/g/h;",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nianticproject/ingress/common/ui/g/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/ui/g/k;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/g/k;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/g/s;Lcom/nianticproject/ingress/common/ui/g/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/a/c/by;->b()Lcom/google/a/c/by;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    .line 37
    invoke-static {}, Lcom/google/a/c/by;->b()Lcom/google/a/c/by;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->e:Lcom/google/a/c/am;

    .line 48
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/g/k;->b:Lcom/nianticproject/ingress/common/ui/g/l;

    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/k;->c:Lcom/nianticproject/ingress/common/ui/g/s;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v0, p1}, Lcom/google/a/c/am;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/nianticproject/ingress/common/ui/g/k;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "getIndexForActor failed for actor=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->c:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/s;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->a()Lcom/google/a/c/am;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/c/am;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/g/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->c:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/g/s;->a(I)Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v1

    const-string/jumbo v0, "getUsableKey failed for index=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->b:Lcom/nianticproject/ingress/common/ui/g/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/g/l;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/common/ui/g/h;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/a/c/am;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/k;->e:Lcom/google/a/c/am;

    invoke-interface {v2, v0, v1}, Lcom/google/a/c/am;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->f:Lcom/nianticproject/ingress/common/ui/g/h;

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->b:Lcom/nianticproject/ingress/common/ui/g/l;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/l;->a()Lcom/nianticproject/ingress/common/ui/g/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->f:Lcom/nianticproject/ingress/common/ui/g/h;

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->f:Lcom/nianticproject/ingress/common/ui/g/h;

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/g/h;)Lcom/nianticproject/ingress/common/inventory/ui/q;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->e:Lcom/google/a/c/am;

    invoke-interface {v0, p1}, Lcom/google/a/c/am;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/common/ui/g/h;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->e:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->a()Lcom/google/a/c/am;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/a/c/am;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/g/h;

    return-object v0
.end method

.method public final a()[Lcom/nianticproject/ingress/common/ui/g/h;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v1}, Lcom/google/a/c/am;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nianticproject/ingress/common/ui/g/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/g/h;

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->c:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/s;->b()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/k;->c:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/g/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/g/h;

    .line 115
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/h;->d()V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g/k;->a()[Lcom/nianticproject/ingress/common/ui/g/h;

    move-result-object v1

    .line 125
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 126
    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/g/h;->e()V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/g/k;->d:Lcom/google/a/c/am;

    invoke-interface {v4, v3}, Lcom/google/a/c/am;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/g/k;->e:Lcom/google/a/c/am;

    invoke-interface {v4, v3}, Lcom/google/a/c/am;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
