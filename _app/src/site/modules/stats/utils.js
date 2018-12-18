const statOrder = [
    { key: 'studies', title: 'studies' },
    { key: 'participants', title: 'participants' },
    { key: 'families', title: 'families' },
    { key: 'samples', title: 'samples' },
    { key: 'files', title: 'files' },
    { key: 'fileSize', title: 'size' },
];

export const transformStats = (rawStat) => {
    const stats = [];
    statOrder.forEach(item =>
        stats.push({
            title: item.title,
            key: item.key,
            value: rawStat[item.key],
        }),
    );

    return stats;
};
