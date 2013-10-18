.class public abstract Landroid/support/v4/app/r;
.super Landroid/support/v4/view/v;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/j;

.field private b:Landroid/support/v4/app/s;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/j;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/v;-><init>()V

    .line 69
    iput-object v1, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Landroid/support/v4/app/r;->e:Landroid/support/v4/app/Fragment;

    .line 76
    iput-object p1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    .line 77
    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 96
    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    .line 105
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    .line 109
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 113
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_3

    .line 114
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 117
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    move-object v0, v1

    .line 120
    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    .line 160
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()Z

    .line 162
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    check-cast p2, Landroid/support/v4/app/Fragment;

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/s;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/s;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    .line 139
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    if-eqz p1, :cond_4

    .line 194
    check-cast p1, Landroid/os/Bundle;

    .line 195
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 196
    const-string/jumbo v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 197
    iget-object v0, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    if-eqz v3, :cond_0

    move v1, v2

    .line 200
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 201
    iget-object v4, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    const-string/jumbo v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 208
    iget-object v4, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v4, p1, v0}, Landroid/support/v4/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_3

    .line 210
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_2
    invoke-virtual {v4, v2}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 214
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 216
    :cond_3
    const-string/jumbo v3, "FragmentStatePagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Bad fragment at key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/r;->e:Landroid/support/v4/app/Fragment;

    if-eq p1, v0, :cond_2

    .line 145
    iget-object v0, p0, Landroid/support/v4/app/r;->e:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/r;->e:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 151
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/r;->e:Landroid/support/v4/app/Fragment;

    .line 153
    :cond_2
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->p()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    iget-object v1, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/Fragment$SavedState;

    .line 175
    iget-object v2, p0, Landroid/support/v4/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 176
    const-string/jumbo v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 178
    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 179
    iget-object v0, p0, Landroid/support/v4/app/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 180
    if-eqz v0, :cond_2

    .line 181
    if-nez v2, :cond_1

    .line 182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/j;

    invoke-virtual {v4, v2, v3, v0}, Landroid/support/v4/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 178
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_3
    return-object v2
.end method
