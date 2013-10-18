.class La/a/a/a/b/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field d:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field e:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field f:I

.field final synthetic g:La/a/a/a/b/ap;


# direct methods
.method constructor <init>(La/a/a/a/b/ap;)V
    .locals 1
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, La/a/a/a/b/bf;->g:La/a/a/a/b/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/bf;->f:I

    .line 1100
    iget-object v0, p1, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    .line 1101
    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    invoke-virtual {v0}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    .line 1125
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    invoke-virtual {v0}, La/a/a/a/b/at;->i()La/a/a/a/b/at;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    .line 1115
    return-void
.end method

.method final e()La/a/a/a/b/at;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1117
    invoke-virtual {p0}, La/a/a/a/b/bf;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1118
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    .line 1119
    iget v0, p0, La/a/a/a/b/bf;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/bf;->f:I

    .line 1120
    invoke-virtual {p0}, La/a/a/a/b/bf;->d()V

    .line 1121
    iget-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    return-object v0
.end method

.method final f()La/a/a/a/b/at;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, La/a/a/a/b/bf;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1128
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    .line 1129
    iget v0, p0, La/a/a/a/b/bf;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/bf;->f:I

    .line 1130
    invoke-virtual {p0}, La/a/a/a/b/bf;->c()V

    .line 1131
    iget-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, La/a/a/a/b/bf;->f:I

    return v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, La/a/a/a/b/bf;->f:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1140
    iget-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    iget-object v1, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    if-ne v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/bf;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/bf;->f:I

    .line 1144
    :cond_1
    iget-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->c:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/bf;->d:La/a/a/a/b/at;

    .line 1145
    invoke-virtual {p0}, La/a/a/a/b/bf;->c()V

    .line 1146
    invoke-virtual {p0}, La/a/a/a/b/bf;->d()V

    .line 1147
    iget-object v0, p0, La/a/a/a/b/bf;->g:La/a/a/a/b/ap;

    iget-object v1, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    iget-wide v1, v1, La/a/a/a/b/at;->a:J

    invoke-virtual {v0, v1, v2}, La/a/a/a/b/ap;->a(J)Ljava/lang/Object;

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/b/bf;->e:La/a/a/a/b/at;

    .line 1149
    return-void
.end method
