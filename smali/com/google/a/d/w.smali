.class public final Lcom/google/a/d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/d/ad;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/a/d/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lcom/google/a/d/l;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/d/y;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Lcom/google/a/d/y;

.field private final e:I

.field private f:I

.field private g:Lcom/google/a/d/v;

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/google/a/d/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/d/w;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private strictfp constructor <init>(Lcom/google/a/d/i;Lcom/google/a/d/v;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    .line 164
    iput v3, p0, Lcom/google/a/d/w;->e:I

    .line 165
    iget v1, p0, Lcom/google/a/d/w;->e:I

    new-array v1, v1, [Lcom/google/a/d/y;

    iput-object v1, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    .line 166
    iput-object v2, p0, Lcom/google/a/d/w;->c:Ljava/util/Map;

    .line 167
    iput-object v2, p0, Lcom/google/a/d/w;->b:Lcom/google/a/d/l;

    .line 168
    iput v0, p0, Lcom/google/a/d/w;->i:I

    .line 169
    :goto_0
    if-ge v0, v3, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    invoke-virtual {p1, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v2

    aput-object v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/w;->b()V

    .line 173
    invoke-direct {p0}, Lcom/google/a/d/w;->a()V

    .line 174
    return-void
.end method

.method public strictfp constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/d/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/a/d/w;->e:I

    .line 98
    iget v0, p0, Lcom/google/a/d/w;->e:I

    new-array v0, v0, [Lcom/google/a/d/y;

    iput-object v0, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    .line 99
    invoke-static {}, Lcom/google/a/d/v;->a()Lcom/google/a/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/w;->i:I

    .line 106
    iget-object v0, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/google/a/d/w;->b()V

    .line 111
    invoke-direct {p0}, Lcom/google/a/d/w;->c()V

    .line 112
    invoke-direct {p0}, Lcom/google/a/d/w;->a()V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/google/a/d/w;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/google/a/d/w;->e:I

    return v0
.end method

.method private strictfp a(Lcom/google/a/d/w;Lcom/google/a/d/t;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1098
    iget v0, p1, Lcom/google/a/d/w;->e:I

    invoke-direct {p0, v0}, Lcom/google/a/d/w;->b(I)Lcom/google/a/d/n;

    move-result-object v10

    .line 1099
    const/4 v0, 0x1

    move v6, v7

    .line 1102
    :goto_0
    iget v1, p1, Lcom/google/a/d/w;->e:I

    if-ge v6, v1, :cond_5

    .line 1103
    new-instance v11, Lcom/google/a/d/p;

    invoke-virtual {p1, v6}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1, v2}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-direct {v11, v1, v2, v3}, Lcom/google/a/d/p;-><init>(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)V

    .line 1105
    const/4 v1, -0x2

    .line 1106
    invoke-virtual {p1, v6}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p1, v3}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/google/a/d/n;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)V

    move v8, v0

    move v0, v1

    :goto_1
    invoke-virtual {v10}, Lcom/google/a/d/n;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1107
    invoke-virtual {v10}, Lcom/google/a/d/n;->a()I

    move-result v9

    .line 1108
    add-int/lit8 v1, v9, -0x1

    if-eq v0, v1, :cond_0

    .line 1109
    invoke-virtual {p0, v9}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/a/d/p;->a(Lcom/google/a/d/y;)V

    .line 1112
    :cond_0
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/a/d/p;->b(Lcom/google/a/d/y;)I

    move-result v0

    .line 1113
    if-ltz v0, :cond_3

    .line 1114
    if-lez v0, :cond_2

    .line 1117
    const/4 v8, -0x1

    .line 1128
    :cond_1
    :goto_2
    return v8

    .line 1119
    :cond_2
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p1, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    invoke-virtual {p0, v9}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    add-int/lit8 v0, v9, 0x2

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-virtual {p1, v6}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v4

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/a/d/t;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1122
    if-ltz v8, :cond_1

    .line 1106
    :cond_3
    invoke-virtual {v10}, Lcom/google/a/d/n;->c()V

    move v0, v9

    goto :goto_1

    .line 1102
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v8

    goto/16 :goto_0

    :cond_5
    move v8, v0

    .line 1128
    goto :goto_2
.end method

.method private strictfp a()V
    .locals 4

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/a/d/w;->e:I

    if-ge v0, v2, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/d/y;->h(Lcom/google/a/d/y;)I

    move-result v2

    if-gez v2, :cond_0

    move v1, v0

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iput v1, p0, Lcom/google/a/d/w;->f:I

    .line 272
    return-void
.end method

.method private strictfp a(Lcom/google/a/d/y;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 815
    iget-object v1, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v1, p1}, Lcom/google/a/d/v;->a(Lcom/google/a/d/y;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-boolean v1, p0, Lcom/google/a/d/w;->h:Z

    .line 820
    invoke-static {}, Lcom/google/a/d/f;->a()Lcom/google/a/d/y;

    move-result-object v2

    .line 821
    new-instance v3, Lcom/google/a/d/p;

    iget-object v4, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    iget v5, p0, Lcom/google/a/d/w;->e:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v2, p1, v4}, Lcom/google/a/d/p;-><init>(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)V

    .line 826
    iget v4, p0, Lcom/google/a/d/w;->e:I

    const/16 v5, 0x7d0

    if-ge v4, v5, :cond_1

    .line 827
    :goto_1
    iget v2, p0, Lcom/google/a/d/w;->e:I

    if-ge v0, v2, :cond_4

    .line 828
    iget-object v2, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Lcom/google/a/d/p;->c(Lcom/google/a/d/y;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_1
    iget v0, p0, Lcom/google/a/d/w;->e:I

    invoke-direct {p0, v0}, Lcom/google/a/d/w;->b(I)Lcom/google/a/d/n;

    move-result-object v4

    .line 832
    const/4 v0, -0x2

    .line 833
    invoke-virtual {v4, v2, p1}, Lcom/google/a/d/n;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)V

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Lcom/google/a/d/n;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 834
    invoke-virtual {v4}, Lcom/google/a/d/n;->a()I

    move-result v1

    .line 835
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    .line 836
    iget-object v0, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lcom/google/a/d/p;->a(Lcom/google/a/d/y;)V

    .line 839
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/a/d/p;->c(Lcom/google/a/d/y;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 833
    invoke-virtual {v4}, Lcom/google/a/d/n;->c()V

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    move v0, v1

    .line 843
    goto :goto_0
.end method

.method private strictfp b(Lcom/google/a/d/y;)I
    .locals 4
    .parameter

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/a/d/w;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/w;->c:Ljava/util/Map;

    .line 1073
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/google/a/d/w;->e:I

    if-gt v0, v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/google/a/d/w;->c:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/w;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1078
    if-nez v0, :cond_1

    .line 1079
    const/4 v0, -0x1

    .line 1081
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private final strictfp b(I)Lcom/google/a/d/n;
    .locals 2
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/a/d/w;->b:Lcom/google/a/d/l;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Lcom/google/a/d/x;

    invoke-direct {v0, p0}, Lcom/google/a/d/x;-><init>(Lcom/google/a/d/w;)V

    iput-object v0, p0, Lcom/google/a/d/w;->b:Lcom/google/a/d/l;

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/w;->b:Lcom/google/a/d/l;

    invoke-virtual {v0, p1}, Lcom/google/a/d/l;->a(I)V

    .line 891
    new-instance v0, Lcom/google/a/d/n;

    iget-object v1, p0, Lcom/google/a/d/w;->b:Lcom/google/a/d/l;

    invoke-direct {v0, v1}, Lcom/google/a/d/n;-><init>(Lcom/google/a/d/l;)V

    return-object v0
.end method

.method private strictfp b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1017
    iget-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {p0, v4}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/v;->a(Lcom/google/a/d/y;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 1031
    iput-boolean v2, p0, Lcom/google/a/d/w;->h:Z

    .line 1032
    invoke-virtual {p0, v4}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/f;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    .line 1033
    invoke-virtual {p0, v4}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1034
    iput-boolean v4, p0, Lcom/google/a/d/w;->h:Z

    .line 1036
    :cond_0
    return-void
.end method

.method private strictfp c()V
    .locals 7

    .prologue
    .line 1045
    new-instance v1, Lcom/google/a/d/q;

    invoke-direct {v1}, Lcom/google/a/d/q;-><init>()V

    .line 1046
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/a/d/w;->e:I

    if-gt v0, v2, :cond_0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/d/q;->a(Lcom/google/a/d/y;)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/d/q;->a()Lcom/google/a/d/v;

    move-result-object v1

    .line 1052
    invoke-static {}, Lcom/google/a/d/v;->a()Lcom/google/a/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    .line 1053
    sget-object v0, Lcom/google/a/d/y;->f:Lcom/google/a/d/y;

    invoke-direct {p0, v0}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    new-instance v0, Lcom/google/a/d/v;

    new-instance v2, Lcom/google/a/d/b;

    invoke-virtual {v1}, Lcom/google/a/d/v;->c()Lcom/google/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    const-wide v5, 0x3ff921fb54442d18L

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/b;-><init>(DD)V

    invoke-static {}, Lcom/google/a/d/e;->b()Lcom/google/a/d/e;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    .line 1060
    :goto_1
    invoke-virtual {v0}, Lcom/google/a/d/v;->d()Lcom/google/a/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/e;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/a/d/y;->g:Lcom/google/a/d/y;

    invoke-direct {p0, v1}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    new-instance v1, Lcom/google/a/d/v;

    new-instance v2, Lcom/google/a/d/b;

    const-wide v3, -0x4006de04abbbd2e8L

    invoke-virtual {v0}, Lcom/google/a/d/v;->c()Lcom/google/a/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/d/b;->b()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/b;-><init>(DD)V

    invoke-virtual {v0}, Lcom/google/a/d/v;->d()Lcom/google/a/d/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    move-object v0, v1

    .line 1063
    :cond_1
    iput-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    .line 1064
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final strictfp a(I)Lcom/google/a/d/y;
    .locals 2
    .parameter

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    iget-object v1, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    array-length v1, v1

    sub-int/2addr p1, v1

    :cond_0
    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid vertex index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 785
    invoke-virtual {p1}, Lcom/google/a/d/i;->c()Lcom/google/a/d/v;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v2, v1}, Lcom/google/a/d/v;->a(Lcom/google/a/d/v;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 789
    :cond_1
    new-instance v2, Lcom/google/a/d/w;

    invoke-direct {v2, p1, v1}, Lcom/google/a/d/w;-><init>(Lcom/google/a/d/i;Lcom/google/a/d/v;)V

    .line 790
    iget-object v1, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    iget-object v3, v2, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v1, v3}, Lcom/google/a/d/v;->a(Lcom/google/a/d/v;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/d/w;->b(Lcom/google/a/d/y;)I

    move-result v1

    if-ltz v1, :cond_0

    :cond_2
    new-instance v1, Lcom/google/a/d/r;

    invoke-direct {v1}, Lcom/google/a/d/r;-><init>()V

    invoke-direct {p0, v2, v1}, Lcom/google/a/d/w;->a(Lcom/google/a/d/w;Lcom/google/a/d/t;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    iget-object v3, v2, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v1, v3}, Lcom/google/a/d/v;->c(Lcom/google/a/d/v;)Lcom/google/a/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/v;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/a/d/w;->b(Lcom/google/a/d/y;)I

    move-result v1

    if-ltz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 804
    invoke-virtual {p1}, Lcom/google/a/d/i;->c()Lcom/google/a/d/v;

    move-result-object v3

    .line 805
    iget-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v0, v3}, Lcom/google/a/d/v;->b(Lcom/google/a/d/v;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 808
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/a/d/w;

    invoke-direct {v0, p1, v3}, Lcom/google/a/d/w;-><init>(Lcom/google/a/d/i;Lcom/google/a/d/v;)V

    :goto_1
    iget-object v3, v0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    iget-object v4, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v3, v4}, Lcom/google/a/d/v;->b(Lcom/google/a/d/v;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v3}, Lcom/google/a/d/v;->d()Lcom/google/a/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/e;->g()D

    move-result-wide v3

    iget-object v5, v0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v5}, Lcom/google/a/d/v;->d()Lcom/google/a/d/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/d/e;->g()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/a/d/w;->b(Lcom/google/a/d/y;)I

    move-result v3

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/a/d/s;

    invoke-direct {v3}, Lcom/google/a/d/s;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/google/a/d/w;->a(Lcom/google/a/d/w;Lcom/google/a/d/t;)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    iget-object v4, v0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v3, v4}, Lcom/google/a/d/v;->a(Lcom/google/a/d/v;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/a/d/w;->a(Lcom/google/a/d/y;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/d/w;->b(Lcom/google/a/d/y;)I

    move-result v0

    if-gez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    check-cast p1, Lcom/google/a/d/w;

    iget v0, p0, Lcom/google/a/d/w;->e:I

    iget v2, p1, Lcom/google/a/d/w;->e:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/google/a/d/w;->e:I

    iget v1, p1, Lcom/google/a/d/w;->e:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v5, p0, Lcom/google/a/d/w;->e:I

    iget v2, p0, Lcom/google/a/d/w;->f:I

    iget v0, p1, Lcom/google/a/d/w;->f:I

    move v3, v0

    move v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/a/d/y;->h(Lcom/google/a/d/y;)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/a/d/w;->g:Lcom/google/a/d/v;

    invoke-virtual {v0}, Lcom/google/a/d/v;->f()Lcom/google/a/d/h;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "S2Loop, "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " points. ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-object v2, p0, Lcom/google/a/d/w;->d:[Lcom/google/a/d/y;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1006
    invoke-virtual {v4}, Lcom/google/a/d/y;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
