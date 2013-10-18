.class public abstract Lcom/nianticproject/ingress/common/model/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Lcom/google/a/a/bb;

.field private static final c:Lcom/google/a/a/ab;


# instance fields
.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, ":delim:"

    .line 22
    sput-object v0, Lcom/nianticproject/ingress/common/model/a/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/bb;->a(Ljava/lang/String;)Lcom/google/a/a/bb;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/model/a/j;->b:Lcom/google/a/a/bb;

    .line 23
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/model/a/j;->c:Lcom/google/a/a/ab;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/a/j;->d:Ljava/lang/Object;

    .line 37
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/model/a/j;->e:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->b:Lcom/google/a/a/bb;

    invoke-virtual {v0, p1}, Lcom/google/a/a/bb;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Did not contain a delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nianticproject/ingress/common/model/a/j;->e:J

    .line 57
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->d:Ljava/lang/Object;

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 60
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->e:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    .line 96
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "Value string must not contain the DELIMETER string"

    invoke-static {v0, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->c:Lcom/google/a/a/ab;

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/model/a/j;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/j;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "Value string must not contain the DELIMETER string"

    invoke-static {v0, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/j;->c:Lcom/google/a/a/ab;

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/model/a/j;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/nianticproject/ingress/common/model/a/j;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0
.end method
