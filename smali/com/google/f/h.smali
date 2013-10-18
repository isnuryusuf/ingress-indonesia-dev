.class public final Lcom/google/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/f/c;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xf4

    const/16 v7, 0xbf

    const/16 v6, 0x80

    const/4 v2, 0x0

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/f/c;->a()I

    move-result v4

    move v0, v2

    .line 120
    :cond_0
    :goto_0
    if-ge v0, v4, :cond_11

    .line 121
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/f/c;->a(I)B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 122
    if-lt v5, v6, :cond_13

    .line 124
    const/16 v0, 0xc2

    if-lt v5, v0, :cond_1

    if-le v5, v8, :cond_2

    :cond_1
    move v0, v2

    .line 184
    :goto_1
    return v0

    .line 131
    :cond_2
    if-lt v3, v4, :cond_3

    move v0, v2

    .line 133
    goto :goto_1

    .line 135
    :cond_3
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/f/c;->a(I)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 136
    if-lt v3, v6, :cond_4

    if-le v3, v7, :cond_5

    :cond_4
    move v0, v2

    .line 138
    goto :goto_1

    .line 140
    :cond_5
    const/16 v0, 0xdf

    if-le v5, v0, :cond_12

    .line 142
    if-lt v1, v4, :cond_6

    move v0, v2

    .line 148
    goto :goto_1

    .line 150
    :cond_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/f/c;->a(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 151
    if-lt v1, v6, :cond_7

    if-le v1, v7, :cond_8

    :cond_7
    move v0, v2

    .line 153
    goto :goto_1

    .line 155
    :cond_8
    const/16 v1, 0xef

    if-gt v5, v1, :cond_b

    .line 158
    const/16 v1, 0xe0

    if-ne v5, v1, :cond_9

    const/16 v1, 0xa0

    if-lt v3, v1, :cond_a

    :cond_9
    const/16 v1, 0xed

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9f

    if-le v3, v1, :cond_0

    :cond_a
    move v0, v2

    .line 161
    goto :goto_1

    .line 167
    :cond_b
    if-lt v0, v4, :cond_c

    move v0, v2

    .line 169
    goto :goto_1

    .line 171
    :cond_c
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/f/c;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 172
    if-lt v0, v6, :cond_d

    if-le v0, v7, :cond_e

    :cond_d
    move v0, v2

    .line 174
    goto :goto_1

    .line 177
    :cond_e
    const/16 v0, 0xf0

    if-ne v5, v0, :cond_f

    const/16 v0, 0x90

    if-lt v3, v0, :cond_10

    :cond_f
    if-ne v5, v8, :cond_12

    const/16 v0, 0x8f

    if-le v3, v0, :cond_12

    :cond_10
    move v0, v2

    .line 180
    goto :goto_1

    .line 184
    :cond_11
    const/4 v0, 0x1

    goto :goto_1

    :cond_12
    move v0, v1

    goto :goto_0

    :cond_13
    move v0, v3

    goto :goto_0
.end method
