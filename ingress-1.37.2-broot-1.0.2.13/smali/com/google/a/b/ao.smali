.class final enum Lcom/google/a/b/ao;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/ap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/b/ao;",
        ">;",
        "Lcom/google/a/b/ap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/b/ao;

.field private static final synthetic b:[Lcom/google/a/b/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 853
    new-instance v0, Lcom/google/a/b/ao;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/a/b/ao;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    .line 852
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/a/b/ao;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/b/ao;->b:[Lcom/google/a/b/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/b/ao;
    .locals 1
    .parameter

    .prologue
    .line 852
    const-class v0, Lcom/google/a/b/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ao;

    return-object v0
.end method

.method public static values()[Lcom/google/a/b/ao;
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/google/a/b/ao;->b:[Lcom/google/a/b/ao;

    invoke-virtual {v0}, [Lcom/google/a/b/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/ao;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/a/b/bd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/bd",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 884
    return-void
.end method

.method public final a(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    return-void
.end method

.method public final a(Lcom/google/a/b/bd;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/bd",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    return-void
.end method

.method public final b()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 908
    return-void
.end method

.method public final b(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 880
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()Lcom/google/a/b/ap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    return-object p0
.end method

.method public final g()Lcom/google/a/b/ap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    return-object p0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 904
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final i()Lcom/google/a/b/ap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    return-object p0
.end method

.method public final j()Lcom/google/a/b/ap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    return-object p0
.end method
