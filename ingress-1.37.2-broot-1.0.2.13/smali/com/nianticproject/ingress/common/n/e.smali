.class final Lcom/nianticproject/ingress/common/n/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/n/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/nianticproject/ingress/common/n/c;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/e;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/nianticproject/ingress/common/n/e;->b:Ljava/lang/String;

    .line 809
    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/a;->f(Lcom/nianticproject/ingress/common/n/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/e;->c:[J

    .line 810
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/n/e;-><init>(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/e;->e:Lcom/nianticproject/ingress/common/n/c;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/e;->e:Lcom/nianticproject/ingress/common/n/c;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 838
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/e;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 795
    array-length v0, p1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/e;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/n/a;->f(Lcom/nianticproject/ingress/common/n/a;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/e;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/e;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/e;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/n/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/n/e;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/n/e;)[J
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/e;->c:[J

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/n/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/n/e;->d:Z

    return v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    .line 842
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/e;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/n/a;->g(Lcom/nianticproject/ingress/common/n/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/n/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    iget-object v2, p0, Lcom/nianticproject/ingress/common/n/e;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 815
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    .line 846
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/e;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/n/a;->g(Lcom/nianticproject/ingress/common/n/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/n/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
